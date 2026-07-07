variable "application_name" {
  type = string

  validation {
    condition     = length(var.application_name) <= 12
    error_message = "Application must be under 12 words"
  }
}

variable "environment_name" {
  type = string
}

variable "api_key" {
  sensitive = true
  type      = string
}

variable "instance_count" {
  type = number

  validation {
    condition     = var.instance_count > local.min_node && var.instance_count <= local.max_node
    error_message = "Server instance must be between 1 and 10"
  }
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
