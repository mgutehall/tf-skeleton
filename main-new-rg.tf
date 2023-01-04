# Cluster Resource Group
resource "azurerm_resource_group" "my-rg" {
  name     = var.resource_group_name
  location = var.location
}

# Network
module "network" {
  source              = "./modules/network"
  subnet_name         = var.subnet_name
  vnet_name           = var.vnet_name
  resource_group_name = azurerm_resource_group.my-rg.name # - New Resource Group
}

# Identities
module "identities" {
  source = "./modules/identities"
}

# Logs
module "logs" {
  source = "./modules/logs"
}

# Storage
module "storage" {
  source = "./modules/storage"
}
