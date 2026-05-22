terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

module "rg" {
  source = "./modules/rg"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "network" {
  source = "./modules/network"

  resource_group_name = module.rg.resource_group_name
  location            = var.location

  vnet_name     = var.vnet_name
  address_space = var.address_space

  server_subnet_prefix     = var.server_subnet_prefix
  dmz_subnet_prefix        = var.dmz_subnet_prefix
  management_subnet_prefix = var.management_subnet_prefix

  tags = var.tags
}

module "nsg" {
  source = "./modules/nsg"

  resource_group_name = module.rg.resource_group_name
  location            = var.location

  management_subnet_id = module.network.management_subnet_id

  allowed_ssh_source_ip = var.allowed_ssh_source_ip

  tags = var.tags
}

module "storage" {
  source = "./modules/storage"

  resource_group_name = module.rg.resource_group_name
  location            = var.location

  storage_account_name = var.storage_account_name

  tags = var.tags
}

module "vm" {
  source = "./modules/vm"

  resource_group_name = module.rg.resource_group_name
  location            = var.location

  subnet_id = module.network.management_subnet_id

  vm_size        = var.vm_size
  admin_username = var.admin_username
  ssh_public_key = var.ssh_public_key

  tags = var.tags
}
