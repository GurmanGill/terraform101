variable "application_name" {

}

variable "environment_name" {

}

locals {
  environment_prefix = "${var.application_name}_${var.environment_name}_${random_string.suffix.result}"
}
