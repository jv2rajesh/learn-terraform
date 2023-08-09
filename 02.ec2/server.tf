resource "aws_instance" "instance" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "test"
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance