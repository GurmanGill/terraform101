environment_name = "prod"
instance_count   = 8
enabled          = false
regions          = ["eastus", "westus"]
region_instance_count = {
  "eastus" = 4
  "westus" = 8
}
region_set = ["eastus", "westus"]
sku_settings = {
  kind = "P"
  tier = "Business"
}
