# Configuration details for Terraform
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "DW-AzureCloud-Sandbox"
    storage_account_name = "saweacas001global"
    container_name       = "tfstate"
    key                  = "logicapp.module.terraform.tfstate"
  }
}

# Configuration details for the Azure Terraform provider
provider "azurerm" {
  features {}
  skip_provider_registration = "true"
}
