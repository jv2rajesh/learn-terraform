variable "components" {
  default = [ "frontend", "mongodb" ]
}
resource "aws_instance" "instance" {

  count = length(var.components)

  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  vpc_security_group_ids = [ "sg-0e65f0ea76c159049" ]

  tags = {
    Name = element(var.components, count.index)
  }
}

# count has many disadvantages and we are not going to use in realtime....we can use only if we have full knowledge on count usage and its outcome