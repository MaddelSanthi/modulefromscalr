terraform {
  backend "remote" {
    hostname     = "proton1.scalr.io"
    organization = "env-v0odjcdcd2qd74e2n"

    workspaces {
      name = "clidriven"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "instance" {
  source         = "proton1.scalr.io/environment-name/instance/aws"
  version        = "1.0.1"
  instance_type  = var.instance_type
  instance_count = var.instance_count
  subnet         = var.subnet
  sg             = var.security_group
  key            = var.ssh_key
  vpc_id         = var.vpc_id
  ami            = var.ami
}
