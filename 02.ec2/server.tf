resource "aws_instance" "test" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0e65f0ea76c159049" ]

  tags = {
    Name = "HelloWorld"
  }
}
resource "aws_route53_record" "test2" {
  zone_id = "Z007817518CXIKGSGIF7E"
  name    = "HelloWorld-dev.jv2rajesh.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.HelloWorld.private_ip]
}