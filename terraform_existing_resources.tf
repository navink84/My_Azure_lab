#-------------------------------------------------
# For automation : RG, Vnet and Subnet import
#-------------------------------------------------

# Create Resource Group
resource "azurerm_resource_group" "rg_name_auto" {
provider                    = azurerm.identity
  name     = "navin"
  location = "Central India"
}

# create virtaul network
resource "azurerm_virtual_network" "vnet_auto" {
provider                    = azurerm.identy
  name                = "navin"
  address_space       = ["10.0.0.0/16"]
  location            = "Central India"
  resource_group_name = azurerm_resource_group.rg_name_auto.name
}
