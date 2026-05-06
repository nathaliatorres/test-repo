region              = "westeurope"
resource_group_name = "arunim-test-resource-group"

public_ip_name              = "pip-egewg-westeurope-subnet1"
public_ip_allocation_method = "Static"
public_ip_sku               = "Standard"

network_interface_name             = "arunim-host-0-nic"
nic_accelerated_networking_enabled = false
nic_ip_forwarding_enabled          = false
nic_ip_configuration_name          = "ipconfig"
nic_private_ip_address_allocation  = "Static"
nic_private_ip_address             = "10.100.1.4"
nic_private_ip_address_version     = "IPv4"
subnet_id                          = "/subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/resourceGroups/dsgsdg/providers/Microsoft.Network/virtualNetworks/egewg/subnets/subnet1"
nic_ip_configuration_primary       = true
nic_tags = {
  "cm-resource-parent" = "/subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/resourcegroups/arunim-test-resource-group/providers/Microsoft.DesktopVirtualization/hostpools/arunim-eu-vd-group"
}

managed_disk_name                 = "arunim-host-0_osdisk_1_498f48af84094a03a30c1a9efe99c319"
managed_disk_storage_account_type = "StandardSSD_LRS"
managed_disk_create_option        = "FromImage"
managed_disk_size_gb              = 128
managed_disk_os_type              = "Windows"
managed_disk_hyper_v_generation   = "V2"
managed_disk_image_reference_id   = "/Subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/Providers/Microsoft.Compute/Locations/westeurope/Publishers/microsoftwindowsdesktop/ArtifactTypes/VMImage/Offers/windows-10/Skus/win10-22h2-ent-g2/Versions/19045.6456.251117"
managed_disk_tags = {
  "cm-resource-parent" = "/subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/resourceGroups/arunim-test-resource-group/providers/Microsoft.DesktopVirtualization/hostpools/arunim-eu-vd-group"
}

vm_name                      = "arunim-host-0"
vm_size                      = "Standard_D2s_v3"
vm_identity_type             = "SystemAssigned"
vm_computer_name             = "arunim-host-0"
vm_admin_username            = "arunim"
vm_image_publisher           = "microsoftwindowsdesktop"
vm_image_offer               = "windows-10"
vm_image_sku                 = "win10-22h2-ent-g2"
vm_image_version             = "latest"
vm_os_disk_name              = "arunim-host-0_OsDisk_1_498f48af84094a03a30c1a9efe99c319"
vm_os_disk_create_option     = "FromImage"
vm_os_disk_caching           = "ReadWrite"
vm_os_type                   = "Windows"
vm_os_disk_managed_disk_type = "StandardSSD_LRS"
vm_boot_diagnostics_enabled  = true
vm_boot_diagnostics_storage_uri = ""
vm_tags = {
  "cm-resource-parent" = "/subscriptions/a97621d8-9158-4681-81b6-38b1222afba4/resourceGroups/arunim-test-resource-group/providers/Microsoft.DesktopVirtualization/hostpools/arunim-eu-vd-group"
}