terraform {
  required_version = "{{ .TfVersion }}"
  required_providers {
{{- range .Providers }}
    {{ .name }} = {
      source  = "{{.source}}"
      version = "{{.version}}"
    }
{{- end }}
    # aws = {
    #   source = "hashicorp/aws"
    # }
  }

  # backend "http" {}

}
