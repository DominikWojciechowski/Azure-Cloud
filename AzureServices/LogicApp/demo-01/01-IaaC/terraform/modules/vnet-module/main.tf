# Network Security Group
resource "azurerm_network_security_group" "network_security_group" {
  
  location                        = var.location
  resource_group_name             = var.resource_group_name

  name                            = var.virtual_network_security_group_name
}

# Create VNet
resource "azurerm_virtual_network" "virtual_network" {
  
  location                        = var.location
  resource_group_name             = var.resource_group_name

  name                            = var.virtual_network_name
  address_space                   = [ var.virtual_network_address_space ]
    
  tags = var.tags
}

resource "azurerm_subnet" "subnet" {

  resource_group_name           = var.resource_group_name
  
  name                          = var.virtual_network_subnet_name
  virtual_network_name          = var.virtual_network_name
  address_prefixes              = [ var.virtual_network_subnet_adress_prefix ]

  service_endpoints             = ["Microsoft.KeyVault"]

  depends_on = [
    azurerm_virtual_network.virtual_network
  ]
}

resource "azurerm_subnet_network_security_group_association" "subnet_network_security_group_association" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.network_security_group.id
}

output "id" {
  value = azurerm_subnet.subnet.id
}