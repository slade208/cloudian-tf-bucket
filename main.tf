provider "aws" {
  region                  = "us-east-1"  # For Cloudian do not replace this
  s3_use_path_style     = true
  access_key              = "<YOUR ACCESS KEY>"
  secret_key              = "<YOUR SECRET KEY>"
  skip_credentials_validation = true  # Set to true to skip credentials validation if using a custom endpoint
  skip_metadata_api_check = true      # Set to true to skip metadata API check if using a custom endpoint
  skip_requesting_account_id = true   # Set to true to skip account check (this will generate a warning) if using custom endpoint
  endpoints {
    s3 = "https://s37.1-900-steve.com"  # Replace with your custom S3 endpoint
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-cloudian"
}

# Remove the # from the below block to enable versioning on the bucket
#resource "aws_s3_bucket_versioning" "versioning_example" {
#  bucket = aws_s3_bucket.example.id
#  versioning_configuration {
#    status = "Enabled"
#  }
#}
