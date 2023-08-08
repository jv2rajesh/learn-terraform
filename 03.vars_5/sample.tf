# variable data types

variable "fruit_details" {
  default = {
    apple = {
      stock = 100              # number
      type = "washington"      # string
      for_sale = true          # boolean
    }
  }
}

output "fruit_details_apple" {
  value = "Apple stock = ${var.fruit_details.apple.stock} , Apple type = ${var.fruit_details.apple.type} , Apple sale status = ${var.fruit_details.apple.for_sale} "
}