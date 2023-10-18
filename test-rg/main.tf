# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used..
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.91.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "viresh-tfstate-rg-donotdelete"
    storage_account_name = "vireshtesttfstatesa"
    container_name       = "tfstate"
    key                  = "test-vm-demo-0908"
  }


}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "test-rg1" {
  name     = "viresh-test-rg1-tfc2"
  location = "eastus"

}
