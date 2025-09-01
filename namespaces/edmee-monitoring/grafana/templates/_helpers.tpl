{{- define "grafana.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "grafana.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "grafana.pvcName" -}}
{{ include "grafana.fullname" . }}-pvc
{{- end -}}

{{- define "grafana.ingressName" -}}
{{ include "grafana.fullname" . }}-ingress
{{- end -}}
