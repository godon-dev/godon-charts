
{{/*
Construct the base name for all resources in this chart.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "godon.fullname" -}}
{{- printf "%s" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Archive DB Port for SQL based interaction to be used
by other services in the cluster
*/}}
{{- define "godon.archiveDB.port " -}}
5433
{{- end -}}
