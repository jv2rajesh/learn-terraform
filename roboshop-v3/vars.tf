
variable "zone_id" {
  default = "Z007817518CXIKGSGIF7E"
}

variable "security_groups" {
  default = [ "sg-0e65f0ea76c159049" ]
}

variable "components" {
  default = {
    frontend = {
      name          = "frontend"
      instance_type = "t3.micro"
    }
      cart = {
        name          = "cart"
        instance_type = "t3.micro"
      }
    }
  }