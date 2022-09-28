{{/*
Selector labels
*/}}
{{- define "apk-helm.pod.selectorLabels" -}}
app.kubernetes.io/app: {{ .app }}
app.kubernetes.io/release: {{ .root.Release.Name }}
{{- end }}

{{- define "apk-helm.cnpg.appUserPassword" -}}
{{ .Values.wso2.apk.cp.cnpg.appUserPassword | b64enc}}
{{- end }}

{{- define "apk-helm.cnpg.superUserPassword" -}}
{{ .Values.wso2.apk.cp.cnpg.superUserPassword | b64enc}}
{{- end }}


{{- define "apl-helm.deployment.readinessProbe.http" -}}
readinessProbe:
  httpGet:
    path: {{ .readinessProbe.path }}
    port: {{ .readinessProbe.port }}
  initialDelaySeconds: {{ .readinessProbe.initialDelaySeconds }}
  periodSeconds: {{ .readinessProbe.periodSeconds }}
  failureThreshold: {{ .readinessProbe.failureThreshold }}
{{- end }}

{{- define "apl-helm.deployment.livenessProbe.http" -}}
livenessProbe:
  httpGet:
    path: {{ .livenessProbe.path }}
    port: {{ .livenessProbe.port }}
  initialDelaySeconds: {{ .livenessProbe.initialDelaySeconds }}
  periodSeconds: {{ .livenessProbe.periodSeconds }}
  failureThreshold: {{ .livenessProbe.failureThreshold }}
{{- end }}

{{- define "apl-helm.deployment.resources" -}}
resources:
  requests:
    memory: {{ .requests.memory }}
    cpu: {{ .requests.cpu }}
  limits:
    memory: {{ .limits.memory }}
    cpu: {{ .limits.cpu }}
{{- end }}
