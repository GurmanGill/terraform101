## Main for Lab1


resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}

resource "random_string" "if" {
  count = var.enabled ? 1 : 0

  length  = 6
  upper   = false
  special = false
}

module "alpha" {
  source  = "hashicorp/module/random"
  version = "1.0.0"
}

module "bravo" {
  source  = "hashicorp/module/random"
  version = "1.0.0"
}
