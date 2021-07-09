provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAWHA5G5WGHNSUNCY6"
  secret_key = "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"
}
resource "aws_instance" "tf-vm1" {
  ami = "ami-0ad704c126371a549"
  instance_type = "t2.micro"
}
