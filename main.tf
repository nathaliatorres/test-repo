module "key_pair" {
  source = "./modules/key_pair"

  key_name   = var.key_pair_key_name
  public_key = var.key_pair_public_key
}

module "instance" {
  source = "./modules/instance"

  ami_id                               = var.instance_ami_id
  instance_type                        = var.instance_instance_type
  availability_zone                    = var.instance_availability_zone
  key_name                             = module.key_pair.key_name
  subnet_id                            = var.instance_subnet_id
  security_group_id                    = var.shared_security_group_id
  source_dest_check                    = var.instance_source_dest_check
  ebs_optimized                        = var.instance_ebs_optimized
  monitoring                           = var.instance_monitoring
  tenancy                              = var.instance_tenancy
  capacity_reservation_preference      = var.instance_capacity_reservation_preference
  metadata_http_endpoint               = var.instance_metadata_http_endpoint
  metadata_http_protocol_ipv6          = var.instance_metadata_http_protocol_ipv6
  metadata_http_put_response_hop_limit = var.instance_metadata_http_put_response_hop_limit
  metadata_http_tokens                 = var.instance_metadata_http_tokens
  metadata_instance_metadata_tags      = var.instance_metadata_instance_metadata_tags
  enclave_options_enabled              = var.instance_enclave_options_enabled
  cpu_core_count                       = var.instance_cpu_core_count
  cpu_threads_per_core                 = var.instance_cpu_threads_per_core
  tags                                 = var.instance_tags
}

module "network_interface" {
  source = "./modules/network_interface"

  subnet_id            = var.network_interface_subnet_id
  private_ip_address   = var.network_interface_private_ip_address
  security_group_id    = var.shared_security_group_id
  source_dest_check    = var.network_interface_source_dest_check
  attached_instance_id = module.instance.instance_id
  device_index         = var.network_interface_device_index
}