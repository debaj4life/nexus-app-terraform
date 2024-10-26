terraform {
  required_version = "~>1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }
  }
  backend "s3" {
    bucket = "nexus-app-bck"
    region = "eu-west-2"
    key    = "nexus/dev/terraform.tfstate"
  }
}

provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      BillingID = "Platform"
      Project   = "Nexus"
    }
  }
}
