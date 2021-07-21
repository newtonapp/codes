
resource "aws_s3_bucket" "myresbuk" {
  bucket = "dark-moon"
}

output "mys3bucket" {
  value = "aws_s3_bucket.myresbuk.bucket_domain_name"
}
