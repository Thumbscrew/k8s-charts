{{/*
Expand the name of the chart.
*/}}
{{- define "tandoor-recipes.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "tandoor-recipes.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "tandoor-recipes.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "tandoor-recipes.labels" -}}
helm.sh/chart: {{ include "tandoor-recipes.chart" . }}
{{ include "tandoor-recipes.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "tandoor-recipes.selectorLabels" -}}
app.kubernetes.io/name: {{ include "tandoor-recipes.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "tandoor-recipes.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "tandoor-recipes.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "tandoor-recipes.postgresql.fullname" -}}
{{- printf "%s-%s" .Release.Name "postgresql" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Set postgres host
*/}}
{{- define "tandoor-recipes.postgresql.host" -}}
{{- if .Values.postgresql.enabled -}}
{{- template "tandoor-recipes.postgresql.fullname" . -}}
{{- else -}}
{{ required "A valid externalPostgresql.host is required" .Values.externalPostgresql.host }}
{{- end -}}
{{- end -}}

{{/*
Set postgres secret
*/}}
{{- define "tandoor-recipes.postgresql.secret" -}}
{{- if .Values.postgresql.enabled -}}
{{- template "tandoor-recipes.postgresql.fullname" . -}}
{{- else -}}
{{- template "tandoor-recipes.fullname" . -}}
{{- end -}}
{{- end -}}

{{/*
Set postgres port
*/}}
{{- define "tandoor-recipes.postgresql.port" -}}
{{- if .Values.postgresql.enabled -}}
{{- if .Values.postgresql.service -}}
{{- .Values.postgresql.service.port | default 5432 }}
{{- else -}}
5432
{{- end -}}
{{- else -}}
{{- required "A valid externalPostgresql.port is required" .Values.externalPostgresql.port -}}
{{- end -}}
{{- end -}}

{{/*
Set postgresql username
*/}}
{{- define "tandoor-recipes.postgresql.username" -}}
{{- if .Values.postgresql.enabled -}}
{{ required "A valid postgresql.auth.username is required" .Values.postgresql.auth.username }}
{{- else -}}
{{ required "A valid externalPostgresql.username is required" .Values.externalPostgresql.username }}
{{- end -}}
{{- end -}}

{{/*
Set postgresql password
*/}}
{{- define "tandoor-recipes.postgresql.password" -}}
{{- if .Values.postgresql.enabled -}}
{{ required "A valid postgresql.auth.password is required" .Values.postgresql.auth.password }}
{{- else if not (and .Values.externalPostgresql.existingSecret .Values.externalPostgresql.existingSecretPasswordKey) -}}
{{ required "A valid externalPostgresql.password is required" .Values.externalPostgresql.password }}
{{- end -}}
{{- end -}}

{{/*
Set postgresql database
*/}}
{{- define "tandoor-recipes.postgresql.database" -}}
{{- if .Values.postgresql.enabled -}}
{{- .Values.postgresql.auth.database | default "recipes" }}
{{- else -}}
{{ required "A valid externalPostgresql.database is required" .Values.externalPostgresql.database }}
{{- end -}}
{{- end -}}
