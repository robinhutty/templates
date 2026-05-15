{{- range .Providers -}}
{{- if eq .name "aws" -}}
variable "aws_region" {
  description = "AWS region for the test."
  type        = string
  default     = "us-east-1"
}
{{- end -}}
{{- end -}}

variable "environment" {
  description = "Environment label for the test."
  type        = string
  default     = "test"
}
