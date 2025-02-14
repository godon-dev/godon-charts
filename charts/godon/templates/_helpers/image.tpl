
{{/*
Define the image configs for godon containers
*/}}

{{- define "api.image" }}
image: {{ .Values.api.image.repository }}:{{ .Values.api.image.tag }}
imagePullPolicy: {{ .Values.api.image.pullPolicy }}
{{- end }}

{{- define "metrics_exporter.image" }}
image: {{ .Values.metrics_exporter.image.repository }}:{{ .Values.metrics_exporter.image.tag }}
imagePullPolicy: {{ .Values.metrics_exporter.image.pullPolicy }}
{{- end }}
