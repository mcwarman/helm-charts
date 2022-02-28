{{/*
Fullname
*/}}
{{- define "backstage.frontendFullname" -}}
{{ include "backstage.fullname" . }}-frontend
{{- end }}

{{/*
Selector labels
*/}}
{{- define "backstage.frontendSelectorLabels" -}}
{{ include "backstage.selectorLabels" . }}
app.kubernetes.io/component: frontend
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "backstage.frontendServiceAccountName" -}}
{{- if .Values.frontend.serviceAccount.create }}
{{- default (printf "%s-frontend" (include "backstage.fullname" .)) .Values.frontend.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.frontend.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
The image to use
*/}}
{{- define "backstage.frontendImage" -}}
{{- printf "%s:%s" .Values.frontend.image.repository (default .Chart.AppVersion .Values.frontend.image.tag) }}
{{- end }}

{{/*
Create config name.
*/}}
{{- define "backstage.frontendConfigName" -}}
{{- template "backstage.frontendFullname" . -}}-app-config
{{- end -}}
