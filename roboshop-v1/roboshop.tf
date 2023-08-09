resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0e65f0ea76c159049" ]

  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "record" {
  zone_id = "Z007817518CXIKGSGIF7E"
  name    = "frontend-dev.jv2rajesh.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0e65f0ea76c159049" ]

  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "record" {
  zone_id = "Z007817518CXIKGSGIF7E"
  name    = "mongodb-dev.jv2rajesh.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]

}
resource "aws_instance" "catalogue" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0e65f0ea76c159049" ]

  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "record" {
  zone_id = "Z007817518CXIKGSGIF7E"
  name    = "catalogue-dev.jv2rajesh.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "redis" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0e65f0ea76c159049" ]

  tags = {
    Name = "redis"
  }
}
resource "aws_route53_record" "record" {
  zone_id = "Z007817518CXIKGSGIF7E"
  name    = "redis-dev.jv2rajesh.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0e65f0ea76c159049" ]

  tags = {
    Name = "user"
  }
}
resource "aws_route53_record" "record" {
  zone_id = "Z007817518CXIKGSGIF7E"
  name    = "user-dev.jv2rajesh.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}
resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0e65f0ea76c159049" ]

  tags = {
    Name = "mysql"
  }
}
resource "aws_route53_record" "record" {
  zone_id = "Z007817518CXIKGSGIF7E"
  name    = "mysql-dev.jv2rajesh.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0e65f0ea76c159049" ]

  tags = {
    Name = "shipping"
  }
}
resource "aws_route53_record" "record" {
  zone_id = "Z007817518CXIKGSGIF7E"
  name    = "shipping-dev.jv2rajesh.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0e65f0ea76c159049" ]

  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_route53_record" "record" {
  zone_id = "Z007817518CXIKGSGIF7E"
  name    = "rabbitmq-dev.jv2rajesh.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}
resource "aws_instance" "payment" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0e65f0ea76c159049" ]

  tags = {
    Name = "payment"
  }
}
resource "aws_route53_record" "record" {
  zone_id = "Z007817518CXIKGSGIF7E"
  name    = "payment-dev.jv2rajesh.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}
resource "aws_instance" "cart" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0e65f0ea76c159049" ]

  tags = {
    Name = "cart"
  }
}
resource "aws_route53_record" "record" {
  zone_id = "Z007817518CXIKGSGIF7E"
  name    = "cart-dev.jv2rajesh.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}
