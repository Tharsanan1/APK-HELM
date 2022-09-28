{{/*
Selector labels
*/}}
{{- define "apk-helm.pod.selectorLabels" -}}
app.kubernetes.io/app: {{ .app }}
app.kubernetes.io/release: {{ .root.Release.Name }}
{{- end }}

{{- define "apk-helm.cnpg.password" -}}
{{-  $secretName := printf "%s-%s" .Values.wso2.apk.cp.cnpg.clusterName "app" -}}
{{ (lookup "v1" "Secret" .Release.Namespace $secretName)  }}
{{- end }}

{{- define "apk-helm.cnpg.appUserPassword" -}}
{{ .Values.wso2.apk.cp.cnpg.appUserPassword | b64enc}}
{{- end }}

{{- define "apk-helm.cnpg.superUserPassword" -}}
{{ .Values.wso2.apk.cp.cnpg.superUserPassword | b64enc}}
{{- end }}
