resource "aws_instance" "test" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0e65f0ea76c159049" ]

  tags = {
    Name = "test"
  }
}
resource "aws_route53_record" "test" {
  zone_id = "Z007817518CXIKGSGIF7E"
  name    = "test-dev.jv2rajesh.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.test.private_ip]
}

#  vpc_security_group_ids = [ "sg-0e65f0ea76c159049" ]  is a Security "group id" which we discussed
#  in early sessions about "allow-all"

# zone_id: we can get it from Route 53 - Hosted Zone details