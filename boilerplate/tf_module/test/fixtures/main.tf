terraform {
  required_version = "{{ .TfVersion }}"

  required_providers {
{{- range .Providers }}
    {{ .name }} = {
      source  = "{{.source}}"
      version = "{{.version}}"
    }
{{- end }}
  }
}

{{- range .Providers }}
{{- if eq .name "aws" }}

provider "aws" {
  region = var.aws_region
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
  filter {
    name   = "default-for-az"
    values = ["true"]
  }
}

{{- end }}
{{- end }}

module "{{ .ModuleName | kebabcase }}" {
  source = "../../"

  environment = var.environment

{{- range .Providers }}
{{- if eq .name "aws" }}
  vpc_id      = data.aws_vpc.default.id
  allowed_cidr_blocks = [data.aws_vpc.default.cidr_block]

{{- end }}
{{- end }}

  tags = {
    Test = "true"
  }
}
