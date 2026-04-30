module "virtual_network" {
  source = "./modules/virtual_network"

  name                = var.virtual_network_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.address_spaced
  tags                = var.tags
  subnets             = var.subnets
}