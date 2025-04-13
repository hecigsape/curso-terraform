terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
}

provider "azurerm" {
  features{}
  subscription_id = "635e1f84-37a0-464b-a734-71f7a3cd12ba"
}

resource "azurerm_resource_group" "rg" { 
    location = "mexicocentral"
    name = var.rg_nombre
}
