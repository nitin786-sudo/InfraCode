rg_names = {
  rg1 = {
    name     = "ResourceGroupOne"
    location = "East US"
  }
}

vnet = {
  vnet1 = {
    name                = "VNetOne"
    address_space       = ["10.0.0.0/16"]
    location            = "East US"
    resource_group_name = "ResourceGroupOne"
    subnet = {
      subnet1 = {
        name           = "SubnetOne"
        address_prefixes = ["10.0.0.0/24"]
      }
    }
  }
  vnet2 = {
    name                = "VNetTwo"
    address_space       = ["10.1.0.0/16"]
    location            = "East US"
    resource_group_name = "ResourceGroupOne"
    subnet = {
      subnet2 = {
        name           = "SubnetTwo"
        address_prefixes = ["10.1.0.0/24"]
      }
    }
  }
}

public_ip = {
  pip1 = {
    name                = "PublicIPOne"
    resource_group_name = "ResourceGroupOne"
    location            = "East US"
    allocation_method   = "Static"
    tags = {
      Environment = "Production"
    }
  }
} 

vm = {
  vm1 = {
    name                  = "VMOne"
    resource_group_name   = "ResourceGroupOne"
    location              = "East US"
    size                  = "Standard_DS1_v2"
    key_vault_name        = "KeyVaultOne"
    vnet_name             = "VNetOne"
    subnet_name           = "SubnetOne"
    public_ip_name       = "PublicIPOne"
    source_image_reference = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
}

keyvaults = {
  kv1 = {
    name     = "KeyVaultOne"
    location = "East US"
    rg_name  = "ResourceGroupOne"
  }
}