{{/*
Expand the name of the chart.
*/}}
{{- define "gramps-web.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "gramps-web.fullname" -}}
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
{{- define "gramps-web.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "gramps-web.labels" -}}
helm.sh/chart: {{ include "gramps-web.chart" . }}
{{ include "gramps-web.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "gramps-web.selectorLabels" -}}
app.kubernetes.io/name: {{ include "gramps-web.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "gramps-web.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "gramps-web.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{- define "gramps-web.redis.fullname" -}}
{{- printf "%s-%s" .Release.Name "redis" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Set redis host
*/}}
{{- define "gramps-web.redis.host" -}}
{{- if .Values.redis.enabled -}}
{{- printf "%s-%s" (include "gramps-web.redis.fullname" .) "master" | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{ required "A valid externalRedis.host is required" .Values.externalRedis.host }}
{{- end -}}
{{- end -}}

{{/*
Set redis secret
*/}}
{{- define "gramps-web.redis.secret" -}}
{{- if .Values.redis.enabled -}}
{{- template "gramps-web.redis.fullname" . -}}
{{- else -}}
{{- template "gramps-web.fullname" . -}}
{{- end -}}
{{- end -}}

{{/*
Set redis port
*/}}
{{- define "gramps-web.redis.port" -}}
{{- if .Values.redis.enabled -}}
{{- .Values.redis.master.service.port | default 6379 }}
{{- else -}}
{{ required "A valid externalRedis.port is required" .Values.externalRedis.port }}
{{- end -}}
{{- end -}}

{{/*
Set redis password
*/}}
{{- define "gramps-web.redis.password" -}}
{{- if (and .Values.redis.enabled .Values.redis.password) -}}
{{ .Values.redis.password }}
{{- else if (and .Values.redis.enabled .Values.redis.auth.password) -}}
{{ .Values.redis.auth.password }}
{{- else if .Values.externalRedis.password -}}
{{ .Values.externalRedis.password }}
{{- end -}}
{{- end -}}

{{/*
Set redis database id
*/}}
{{- define "gramps-web.redis.dbid" -}}
{{- if .Values.redis.enabled -}}
{{ .Values.redis.dbid | default 0 }}
{{- else -}}
{{ .Values.externalRedis.dbid | default 0 }}
{{- end -}}
{{- end -}}

