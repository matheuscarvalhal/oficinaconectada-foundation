terraform {
  required_version = ">= 1.8.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "oficinaconectada-terraform-state"
    key            = "oficinaconectada-foundation/terraform.tfstate"
    region         = "sa-east-1"
    dynamodb_table = "oficinaconectada-terraform-lock"
    encrypt        = true
  }
}
