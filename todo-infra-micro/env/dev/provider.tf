terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.51.0"
    }

    # azuread = {
    #   source  = "hashicorp/azuread"
    #   version = "3.7.0"
    # }
  }


}

provider "azurerm" {
  features {}

  subscription_id = "50354b75-d3cd-40ce-93e2-f5c270b6eb58"
}

# provider "azuread" {
  
# }
