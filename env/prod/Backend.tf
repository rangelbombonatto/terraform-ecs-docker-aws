terraform {
  backend "s3" {
    bucket = "terraform-state-alura2"
    key    = "Prod/terraform.tfstate"
    region = "us-west-2"
  }
}