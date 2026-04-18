
{{/*
Define the image configs for godon containers
*/}}

{{- define "api.image" }}
image: {{ .Values.api.image.repository }}:{{ .Values.api.image.tag }}
imagePullPolicy: {{ .Values.api.image.pullPolicy }}
{{- end }}

{{- define "observer.image" }}
image: {{ .Values.observer.image.repository }}:{{ .Values.observer.image.tag }}
imagePullPolicy: {{ .Values.observer.image.pullPolicy }}
{{- end }}

{{- define "mcp.image" }}
image: {{ .Values.mcp.image.repository }}:{{ .Values.mcp.image.tag }}
imagePullPolicy: {{ .Values.mcp.image.pullPolicy }}
{{- end }}
