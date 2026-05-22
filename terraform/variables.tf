variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-prosjektoppgave-sky"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "norwayeast"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "vnet-prosjektoppgave"
}

variable "address_space" {
  description = "Address space"
  type        = list(string)
  default     = ["10.10.0.0/16"]
}

variable "server_subnet_prefix" {
  type    = list(string)
  default = ["10.10.10.0/24"]
}

variable "dmz_subnet_prefix" {
  type    = list(string)
  default = ["10.10.30.0/24"]
}

variable "management_subnet_prefix" {
  type    = list(string)
  default = ["10.10.100.0/24"]
}

variable "nsg_name" {
  type    = string
  default = "nsg-management"
}

variable "allowed_ssh_source_ip" {
  description = "Public IP allowed to SSH"
  type        = string
}

variable "storage_account_name" {
  description = "Storage account name"
  type        = string
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "admin_username" {
  type    = string
  default = "azureuser"
}

variable "ssh_public_key" {
  description = "SSH public key"
  type        = string
}

variable "tags" {
  type = map(string)

  default = {
    environment = "student"
    project     = "skytjenester"
  }
}