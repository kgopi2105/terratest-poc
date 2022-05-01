terraform {
  # This module is now only being tested with Terraform 0.13.x. However, to make upgrading easier, we are setting
  # 0.12.26 as the minimum version, as that version added support for required_providers with source URLs, making it
  # forwards compatible with 0.13.x code.
  required_version = ">= 0.12.26"
}

provider "azurerm" {
  features {

  }

}

# The simplest possible Terraform module: it just outputs "Hello, World!"


resource "azurerm_resource_group" "rg" {
  name     = "terratestrg"
  location = "northeurope"
  tags = {
    "env" = "dev"
  }
}

output "RGName" {
  value = azurerm_resource_group.rg.name
}

output "Location" {
  value = azurerm_resource_group.rg.location

}
