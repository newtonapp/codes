variable "BLUE_VPC_CIDR" {
  description = "Enter VPC CIDR eg:10.0.0.0/16"
}
variable "INC_TAG" {
  description = "Enter VPC Tag Name"
}
variable "BLUE_SUB1b_CIDR" {
  description = "Enter BLUE subnet-1b cidr block eg:10.0.2.0/24"
}
variable "BLUE_SUB1b_TAG" {
  description = "Enter SUB1b Tag Name"
}
variable "BLUE_SUB1a_CIDR" {
  description = "Enter BLUE subnet-1a cidr block eg:10.0.1.0/24"
}
variable "BLUE_SUB1a_TAG" {
  description = "Enter SUB1a Tag Name"
}
variable "AvailabilityZonesA" {
  description = "Prod AvailabilityZones-B is ap-south-1a, ap-south-1b, ap-south-1c"
}
variable "AvailabilityZonesB" {
  description = "Prod AvailabilityZones-A is ap-south-1a, ap-south-1b, ap-south-1c"
}
