module "bucket" {
  source             = "github.com/bananalab/terraform-modules//modules/aws-s3-bucket?ref=v0.2.0"
  enable_replication = false
  logging_enabled    = false
}
