terraform {
  backend "s3" {
    bucket = "jv2rajesh"
    key    = "08.state/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "test" {
  default = "hello world"
}

output "test"{
  value = var.test
}