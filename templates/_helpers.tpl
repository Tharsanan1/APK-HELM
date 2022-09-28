{{/*
Selector labels
*/}}
{{- define "apk-helm.pod.selectorLabels" -}}
app.kubernetes.io/app: {{ .app }}
app.kubernetes.io/release: {{ .root.Release.Name }}
{{- end }}