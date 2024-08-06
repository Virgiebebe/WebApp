{{- /*
Define common helper templates for the Helm chart.
*/ -}}

{{- define "hello-world.name" -}}
{{- .Release.Name -}}
{{- end -}}

{{- define "hello-world.fullname" -}}
{{- printf "%s-%s" (include "hello-world.name" .) .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "hello-world.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/name: {{ include "hello-world.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "hello-world.selectorLabels" -}}
app.kubernetes.io/name: {{ include "hello-world.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "hello-world.servicePort" -}}
{{- .Values.service.port -}}
{{- end -}}

{{- define "hello-world.ingressName" -}}
{{- printf "%s-ingress" (include "hello-world.fullname" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
