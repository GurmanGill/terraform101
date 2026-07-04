variable "application_name" {
  type = string
}

variable "environment_name" {
  type = string
}

locals {
  environment_prefix = "${var.application_name}_${var.environment_name}_${random_string.suffix.result}"
}

variable "api_key" {
  sensitive = true
  type      = string
}

variable "instance_count" {
  type = number
}

variable "enabled" {
  type = bool
}

variable "regions" {
  type = list(any)
}

variable "region_instance_count" {
  type = map(any)
}

variable "region_set" {
  type = set(string)
}

variable "sku_settings" {
  type = object({
    kind = string
    tier = string
  })
}
