module "RG" {
    source = "../Child/rg"
    rg_names = var.rg_names
}

module "VNet" {
    depends_on = [ module.RG ]
    source = "../Child/network"
    vnet = var.vnet
}

module "PublicIP" {
    depends_on = [ module.RG ]
    source = "../Child/pip"
    public_ip = var.public_ip
}

module "Compute" {
    depends_on = [ module.VNet, module.PublicIP ]
    source = "../Child/vm"
    vm = var.vm
  
}

module "keyvaults" {
    depends_on = [ module.RG ]
    source = "../Child/keyvault"
    keyvaults = var.keyvaults
}