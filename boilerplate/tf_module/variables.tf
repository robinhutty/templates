# Input variable definitions for {{ .ModuleName | kebabcase }}
# REQUIRED VARIABLES
# TODO: define your required variables here

variable "example_required_input" {
  description = "Example required input variable"
  type        = string
  default     = "empty"
  validation {
    condition     = var.example_required_input != "empty"
    error_message = "TODO: This sample error message says that the var should not contain the string 'empty'."
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL VARIABLES
# TODO: define your optional variables here
# ---------------------------------------------------------------------------------------------------------------------

variable "example_optional_input" {
  description = "Example optional input variable"
  type        = string
  default     = "example-optional"
}
