provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAWHA5G5WGHNSUNCY6"
  secret_key = "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"
}

resource "aws_vpc" "dev-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "UAT"
  }
}
