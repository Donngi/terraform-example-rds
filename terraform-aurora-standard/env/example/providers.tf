provider "aws" {
  region = "ap-northeast-1"
  default_tags {
    tags = {
      repository = "terraform-example-rds"
      env        = "terraform-aurora-provisioned.example"
    }
  }
}
