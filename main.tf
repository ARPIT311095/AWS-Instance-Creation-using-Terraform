terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.28.0"
    }
  }
}

# kis region me kaam karna hain wo bata raha hu
provider "aws" {
    region = "us-east-1"   # Configuration options
}

# ab kya kaam karna hain wo batana hain

resource "aws_instance" "mywebserver" {

  ami = "ami-0ecb62995f68bb549"
  instance_type = "t3.nano"
}
