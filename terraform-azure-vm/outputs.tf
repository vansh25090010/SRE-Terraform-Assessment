output "vm_name" {
  description = "Virtual machine name"
  value       = azurerm_linux_virtual_machine.vm.name
}

output "resource_group" {
  description = "Resource group name"
  value       = azurerm_resource_group.rg.name
}

output "storage_account_name" {
  description = "Storage account name"
  value       = azurerm_storage_account.storage.name
}
