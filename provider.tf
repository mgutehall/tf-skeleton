provider "aws" {
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = "default"
  region                  = var.region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "MyBucket"
    key    = "path/to/my/tfstate"
    region = var.region
  }
}

# --------------------------------------------------

# Azure
provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.96.0"
    }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "MyRG"
    storage_account_name = "MyStorage"
    container_name       = "MyContainer"
    key                  = "terraform.tfstate"
  }
}