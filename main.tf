terraform {
  required_version = ">= 1.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  resource_provider_registrations = "none"
}

resource "azurerm_resource_group" "main" {
  name     = "rg-tflz-dev"
  location = "germanywestcentral"

  tags = {
    project    = "azure-terraform-landing-zone"
    managed_by = "terraform"
    owner      = "nihat"
  }
}
