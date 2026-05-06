module "public_ip" {
  source              = "./modules/public_ip"
  name                = var.public_ip_name
  resource_group_name = var.resource_group_name
  location            = var.region
  allocation_method   = var.public_ip_allocation_method
  sku                 = var.public_ip_sku
}

module "network_interface" {
  source                        = "./modules/network_interface"
  name                          = var.network_interface_name
  resource_group_name           = var.resource_group_name
  location                      = var.region
  accelerated_networking_enabled = var.nic_accelerated_networking_enabled
  ip_forwarding_enabled         = var.nic_ip_forwarding_enabled
  ip_configuration_name         = var.nic_ip_configuration_name
  private_ip_address_allocation = var.nic_private_ip_address_allocation
  private_ip_address            = var.nic_private_ip_address
  private_ip_address_version    = var.nic_private_ip_address_version
  subnet_id                     = var.subnet_id
  public_ip_address_id          = module.public_ip.id
  ip_configuration_primary      = var.nic_ip_configuration_primary
  tags                          = var.nic_tags
}

module "managed_disk" {
  source               = "./modules/managed_disk"
  name                 = var.managed_disk_name
  resource_group_name  = var.resource_group_name
  location             = var.region
  storage_account_type = var.managed_disk_storage_account_type
  create_option        = var.managed_disk_create_option
  disk_size_gb         = var.managed_disk_size_gb
  os_type              = var.managed_disk_os_type
  hyper_v_generation   = var.managed_disk_hyper_v_generation
  image_reference_id   = var.managed_disk_image_reference_id
  tags                 = var.managed_disk_tags
}

module "virtual_machine" {
  source                       = "./modules/virtual_machine"
  name                         = var.vm_name
  resource_group_name          = var.resource_group_name
  location                     = var.region
  vm_size                      = var.vm_size
  network_interface_ids        = [module.network_interface.id]
  identity_type                = var.vm_identity_type
  computer_name                = var.vm_computer_name
  admin_username               = var.vm_admin_username
  image_publisher              = var.vm_image_publisher
  image_offer                  = var.vm_image_offer
  image_sku                    = var.vm_image_sku
  image_version                = var.vm_image_version
  os_disk_name                 = var.vm_os_disk_name
  os_disk_create_option        = var.vm_os_disk_create_option
  os_disk_caching              = var.vm_os_disk_caching
  os_type                      = var.vm_os_type
  os_disk_managed_disk_type    = var.vm_os_disk_managed_disk_type
  boot_diagnostics_enabled     = var.vm_boot_diagnostics_enabled
  boot_diagnostics_storage_uri = var.vm_boot_diagnostics_storage_uri
  tags                         = var.vm_tags
}