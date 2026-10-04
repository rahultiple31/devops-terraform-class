terraform {
  backend "s3" {
    bucket  = "terraform-backend-ms"
    key     = "backup/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
