region               = "eastus"
virtual_network_name = "azurenetworknet"
resource_group_name  = "azurenetwork"
location             = "eastus"
address_space        = ["10.0.0.0/16"]

tags = {
  ENV = "test"
}

subnets = {
  subnet1 = {
    name             = "subnet1"
    address_prefixes = ["10.0.1.0/24"]
  }
  subnet2 = {
    name             = "subnet2"
    address_prefixes = ["10.0.2.0/24"]
  }
  subnet3 = {
    name             = "subnet3"
    address_prefixes = ["10.0.3.0/24"]
  }
}