variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "management_subnet_id" {
  type = string
}

variable "allowed_ssh_source_ip" {
  type = string
}

variable "tags" {
  type = map(string)
}