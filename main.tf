module "azure_region" {
  source  = "git::https://github.com/lkurzyniec/azure-regions-private"

  location = "South Africa North"
}

output "region" {
  value       = module.azure_region.location_short
  description = "Azure region in short format"
}
