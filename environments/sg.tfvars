region               = "germanywestcentral"
virtual_network_name = "Kabibeispiel"
resource_group_name  = "Kabibeispiel"
address_space        = ["10.100.0.0/16"]

tags = {
  ENV = "test"
}

subnets = {
  subnet1 = {
    address_prefixes                  = ["10.100.1.0/24"]
    private_endpoint_network_policies = "Enabled"
  }
  subnet2 = {
    address_prefixes                  = ["10.100.2.0/24"]
    private_endpoint_network_policies = "Enabled"
  }
  subnet3 = {
    address_prefixes                  = ["10.100.3.0/24"]
    private_endpoint_network_policies = "Enabled"
  }
}