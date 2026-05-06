resource "azurerm_network_interface" "this" {
  name                          = var.name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  accelerated_networking_enabled = var.accelerated_networking_enabled
  ip_forwarding_enabled         = var.ip_forwarding_enabled
  tags                          = var.tags

  ip_configuration {
    name                          = var.ip_configuration_name
    private_ip_address_allocation = var.private_ip_address_allocation
    private_ip_address            = var.private_ip_address
    private_ip_address_version    = var.private_ip_address_version
    subnet_id                     = var.subnet_id
    public_ip_address_id          = var.public_ip_address_id
    primary                       = var.ip_configuration_primary
  }
}