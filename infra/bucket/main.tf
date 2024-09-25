terraform {
  cloud {
    organization = "banana-lab"

    workspaces {
      name = "terraform-live"
    }
  }
}

module "s3-bucket" {
  source  = "app.terraform.io/banana-lab/s3-bucket/aws"
  version = "1.0.0"

  bucket = "test-bucket-1234"
  enable_replication = false
  logging_enabled    = false
}
