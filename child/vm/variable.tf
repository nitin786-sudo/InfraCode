variable "vm" {
    type = map(object({
        name                     = string
        location                 = string
        resource_group_name      = string
        vnet_name                = string
        subnet_name              = string
        public_ip_name           = string
        key_vault_name           = string
        size                     = string
        source_image_reference   = map(string)
    })) 
}