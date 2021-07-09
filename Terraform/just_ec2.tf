provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAWHA5G5WGHNSUNCY6"
  secret_key = "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"
}
resource "aws_instance" "tf-vm1" {
  ami = "${var.dev_vm1}"
  instance_type = "${var.dev_vm1}"
}
}
output "ec2_id" {
  description = "ID of project VPC"
  value       = aws_instance.tf-vm1.instance_type
}
