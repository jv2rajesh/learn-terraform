resource "aws_instance" "instance" {

  ami                    = data.aws_ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_groups

  tags = {
    Name = var.name
  }
}

resource "aws_route53_record" "record" {

  zone_id = var.zone_id
  name    = "${var.name}.jv2rajesh.online"
  type    = "A"
  ttl     = 30
  records = [aws.instance.instance.private_ip]
}

data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-*"
  owners           = ["973714476881"]
}