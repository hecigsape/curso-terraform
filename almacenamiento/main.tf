terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "635e1f84-37a0-464b-a734-71f7a3cd12ba"
}

resource "azurerm_resource_group" "rg" {
  location = "brazilsouth"
  name     = "grupoAlmacenamiento"
}

resource "azurerm_storage_account" "storage_account" {
  name                          = "admindefstoragea"
  resource_group_name           = azurerm_resource_group.rg.name
  location                      = azurerm_resource_group.rg.location
  account_tier                  = "Standard"
  account_replication_type      = "GRS"
  public_network_access_enabled = false
  tags = {
    environment = "staging"
  }
}
output "string_conection" {
  value     = azurerm_storage_account.storage_account.primary_connection_string
  sensitive = true
}