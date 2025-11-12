variable "rg_names" {
    type = map(object({
        name     = string
        location = string
    }))
  
}
variable "vnet" {
    type = map(object({
        name                = string
        address_space       = list(string)
        location            = string
        resource_group_name = string
        subnet = optional(map(object({
            name           = string
            address_prefixes = list(string)
        })), {})
    }))
  
}

variable "public_ip" {
    type = map(object({
        name                = string
        resource_group_name = string
        location            = string
        allocation_method   = string
        tags                = map(string)
    }))     
  
}

variable "vm" {
    type = map(object({
        name                     = string
        location                 = string
        resource_group_name      = string
        vnet_name                = string
        subnet_name              = string
        key_vault_name           = string
        public_ip_name           = string
        size                     = string
        source_image_reference   = map(string)
    })) 
}

variable "keyvaults" {
  description = "A map of key vaults to create"
  type = map(object({
    name     = string
    location = string
    rg_name  = string
  }))
}