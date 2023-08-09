
variable "ami" {
  default = "ami-03265a0778a880afb"
}
variable "zone_id" {
  default = "Z007817518CXIKGSGIF7E"
}

variable "instance_type" {
  default = "t3.small"
}

variable "security_groups" {
  default = [ "sg-0e65f0ea76c159049" ]
}

variable "components" {
  default = {
    frontend = {name = "frontend-dev"}
    catalogue = {name = "catalogue-dev"}
    mongodb = {name = "mongodb-dev"}
    user = {name = "user-dev"}
    redis = {name = "redis-dev"}
    cart = {name = "cart-dev"}
    mysql = {name = "mysql-dev"}
    shipping = {name = "shipping-dev"}
    payment = {name = "payment-dev"}
    rabbitmq = {name = "rabbitmq-dev"}
  }

}
resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = lookup(each.value, "name", null)
  }
}

resource "aws_route53_record" "record" {
  for_each = var.components
  zone_id = var.zone_id
  name    = "${lookup(each.value, "name", null)}.jv2rajesh.online"
  type    = "A"
  ttl     = 30
  records = [lookup(lookup(aws_instance.instance, each.key, null), "private_ip", null)]
}


/* to understand records, please refer the session-27 @ 01:06:00 */
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance  - create AWS Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record  - create DNS Record