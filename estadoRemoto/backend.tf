terraform {
  backend "azurerm" {
    storage_account_name = "estadosterraformamin"
    container_name = "states"
    key = "estados.tfstate"
  }
}


# terraform init -backend-config="sas_token=aqui_va_el_token"