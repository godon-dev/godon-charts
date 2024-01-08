
{{/*
Define the image configs for godon containers
*/}}
{{- define "api.image" }}
image: {{ .Values.api.image.repository }}:{{ .Values.api.image.tag }}
imagePullPolicy: {{ .Values.api.image.pullPolicy }}
{{- end }}
