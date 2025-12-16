terraform {
  backend "azurerm" {
    resource_group_name  = "rg-backend"
    storage_account_name = "backendstgvv"
    container_name       = "tfstates"
    key                  = "dev.terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.51.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "eac08841-5119-4501-b5ac-82e7a5d29114"
}