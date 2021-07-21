resource "aws_instance" "tf-vm1" {
  ami = "ami-0ad704c126371a549"
  instance_type = "t2.micro"
}
