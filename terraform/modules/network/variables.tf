variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "server_subnet_prefix" {
  type = list(string)
}

variable "dmz_subnet_prefix" {
  type = list(string)
}

variable "management_subnet_prefix" {
  type = list(string)
}

variable "tags" {
  type = map(string)
}