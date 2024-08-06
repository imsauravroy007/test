terraform {
  required_providers {
    aws ={
      source = "hashicorp/aws"
    }
  }
}



provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "example" {
  
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "web - ${terraform.workspace}"
  }

  # ... other arguments
}
