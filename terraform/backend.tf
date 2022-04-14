terraform {
  backend "s3" {
    bucket = "tf-state-blog"
    key    = "dev/terraform"
    region = "us-east-1"
    tags   = "${merge(local.tags)}"
  }
}