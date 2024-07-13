{{/*
Expand the name of the chart.
*/}}
{{- define "unifi-controller.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "unifi-controller.fullname" -}}
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
{{- define "unifi-controller.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "unifi-controller.labels" -}}
helm.sh/chart: {{ include "unifi-controller.chart" . }}
{{ include "unifi-controller.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "unifi-controller.selectorLabels" -}}
app.kubernetes.io/name: {{ include "unifi-controller.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "unifi-controller.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "unifi-controller.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "unifi-controller.mongodb.fullname" -}}
{{- printf "%s-%s" .Release.Name "mongodb" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Set mongodb host
*/}}
{{- define "unifi-controller.mongodb.host" -}}
{{- if .Values.mongodb.enabled -}}
{{- template "unifi-controller.mongodb.fullname" . -}}
{{- else -}}
{{ required "A valid externalMongodb.host is required" .Values.externalMongodb.host }}
{{- end -}}
{{- end -}}

{{/*
Set mongodb secret
*/}}
{{- define "unifi-controller.mongodb.secret" -}}
{{- if .Values.mongodb.enabled -}}
{{- template "unifi-controller.mongodb.fullname" . -}}
{{- else -}}
{{- template "unifi-controller.fullname" . -}}
{{- end -}}
{{- end -}}

{{/*
Set mongodb port
*/}}
{{- define "unifi-controller.mongodb.port" -}}
{{- if .Values.mongodb.enabled -}}
{{- if .Values.mongodb.service -}}
{{- .Values.mongodb.service.port | default 27017 }}
{{- else -}}
5432
{{- end -}}
{{- else -}}
{{- required "A valid externalMongodb.port is required" .Values.externalMongodb.port -}}
{{- end -}}
{{- end -}}

{{/*
Set mongodb username
*/}}
{{- define "unifi-controller.mongodb.username" -}}
{{- if .Values.mongodb.enabled -}}
{{ required "A valid mongodb.auth.usernames is required" (first .Values.mongodb.auth.usernames) }}
{{- else -}}
{{ required "A valid externalMongodb.username is required" .Values.externalMongodb.username }}
{{- end -}}
{{- end -}}

{{/*
Set mongodb password
*/}}
{{- define "unifi-controller.mongodb.password" -}}
{{- if .Values.mongodb.enabled -}}
{{ required "A valid mongodb.auth.passwords is required" (first .Values.mongodb.auth.passwords) }}
{{- else if not (and .Values.externalMongodb.existingSecret .Values.externalMongodb.existingSecretPasswordKey) -}}
{{ required "A valid externalMongodb.password is required" .Values.externalMongodb.password }}
{{- end -}}
{{- end -}}

{{/*
Set mongodb database
*/}}
{{- define "unifi-controller.mongodb.database" -}}
{{- if .Values.mongodb.enabled -}}
{{- (first .Values.mongodb.auth.databases) | default "unifi" }}
{{- else -}}
{{ required "A valid externalMongodb.database is required" .Values.externalMongodb.database }}
{{- end -}}
{{- end -}}
