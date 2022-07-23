provider "aws" {
  region     = var.region
}

resource "aws_instance" "ourfirst" {
  count=1
  ami           = var.ami
  instance_type = var.instance
  security_groups= ["launch-wizard-1"]
  key_name = "newaws"
}

