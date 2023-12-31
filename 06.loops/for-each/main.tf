variable "components" {
  default = {
    frontend = { name = "frontend_sg"}
    mongodb = { name = "mongodb_sg"}
  }
}

resource "aws_security_group" "allow_tls" {
  for_each = var.components
  name = lookup(each.value, "name", null)
}


# keys are frontend, mongodb etc
# values are { name = "frontend_sg"} , { name = "mongodb_sg"} etc

# resource command from https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group
