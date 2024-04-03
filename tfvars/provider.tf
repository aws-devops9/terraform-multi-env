terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.43.0"
    }
  }
}

terraform {
  backend "s3" {
  }
}

provider "aws" {
  region = "us-east-1"
  # Configuration options
}

