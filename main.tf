terraform {
  backend "remote" {
    hostname     = "scalr-demo.scalr.io"
    organization = "org-ssccu6d5ch61234"

    workspaces {
      name = "CredHelper"
    }
  }
}

module "module-ec2" {
  source        = "docs.scalr.io/env-t568vsij9i12345/module-ec2/aws"
  version       = "0.0.4"
  instance_type = "t2.nano"  # Required variable for the module
}
