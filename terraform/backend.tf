terraform {
  backend "s3" {
    bucket         = "tksterraformstate-eunorth"
    key            = "terraform.tfstate"
    dynamodb_table = "terraform-state-lock"
    region         = var.region
  }
}