module "azure_region" {
  source  = "git::https://github.com/lkurzyniec/azure-regions-private"

  location = var.region
}

output "region" {
  value       = module.azure_region.location_short
  description = "Azure region in short format"
}

output "eu" {
  value       = module.azure_region.is_eu
  description = "Is Azure region located in Europe"
}
