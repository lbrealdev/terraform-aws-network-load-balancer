provider "aws" {
  region = var.region
  version = ">= 2.0"
}

terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = ">= 2.5.0"
  }
}

module "core_solunion" {
  source = "./modules/core"
}