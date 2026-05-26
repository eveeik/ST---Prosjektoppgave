output "resource_group_name" {
  description = "Name of the created resource group"
  value       = module.rg.resource_group_name
}

output "vnet_name" {
  description = "Name of the created virtual network"
  value       = module.network.vnet_name
}

output "management_subnet_id" {
  description = "ID of the management subnet"
  value       = module.network.management_subnet_id
}

output "storage_account_name" {
  description = "Name of the created storage account"
  value       = module.storage.storage_account_name
}

output "vm_public_ip" {
  description = "Public IP address of the virtual machine"
  value       = module.vm.public_ip
}
