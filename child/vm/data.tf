data "azurerm_subnet" "subnet" {
  for_each = var.vm
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_public_ip" "example" {
  for_each = var.vm
  name                = each.value.public_ip_name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_key_vault" "kv" {
  for_each = var.vm
  name                = each.value.key_vault_name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_key_vault_secret" "name" {
  for_each = var.vm
  name         = "username"
  key_vault_id = data.azurerm_key_vault.kv[each.key].id
}

data "azurerm_key_vault_secret" "password" {
  for_each = var.vm
  name         = "userpassword"
  key_vault_id = data.azurerm_key_vault.kv[each.key].id
}
