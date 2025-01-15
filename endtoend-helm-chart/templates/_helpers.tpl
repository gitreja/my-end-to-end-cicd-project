{{/*
Return the full name of the resource. This function ensures all resource names are consistent.
*/}}
{{- define "endtoend-helm-chart.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{ .Values.fullnameOverride }}
{{- else -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end -}}
{{- end }}

{{/*
Return the name of the frontend resource.
*/}}
{{- define "endtoend-helm-chart.frontend.fullname" -}}
{{ include "endtoend-helm-chart.fullname" . }}-frontend
{{- end }}

{{/*
Return the name of the backend resource.
*/}}
{{- define "endtoend-helm-chart.backend.fullname" -}}
{{ include "endtoend-helm-chart.fullname" . }}-backend
{{- end }}

{{/*
Common labels for all resources.
*/}}
{{- define "endtoend-helm-chart.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
