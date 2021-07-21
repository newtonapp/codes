resource "aws_instance" "tf-vm1" {
  ami = "${var.dev_vm1}"
  instance_type = "${var.dev_vm1}"
}
}
output "ec2_id" {
  description = "ID of project VPC"
  value       = aws_instance.tf-vm1.instance_type
}
