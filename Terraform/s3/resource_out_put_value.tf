provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAWHA5G5WGHNSUNCY6"
  secret_key = "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"
}
resource "aws_s3_bucket" "myresbuk" {
  bucket = "dark-moon"
}

output "mys3bucket" {
  value = "aws_s3_bucket.myresbuk.bucket_domain_name"
}
