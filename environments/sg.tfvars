region               = "germanywestcentral"
virtual_network_name = "Kabibeispiel"
resource_group_name  = "kabibeispiel"
address_space        = ["10.100.0.0/16"]

tags = {
  ENV = "test"
}

subnets = {
  subnet1 = {
    name             = "subnet1"
    address_prefixes = ["10.100.1.0/24"]
  }
  subnet2 = {
    name             = "subnet2"
    address_prefixes = ["10.100.2.0/24"]
  }
  subnet3 = {
    name             = "subnet3"
    address_prefixes = ["10.100.3.0/24"]
  }
}