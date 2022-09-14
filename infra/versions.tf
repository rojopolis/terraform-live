terraform {
  backend "s3" {
    bucket = "terraform-20220914175403902600000001"
    key    = "terraform.tfstate"
  }
}
