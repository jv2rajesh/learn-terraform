# 2. Map variable, Plain
variable "fruit_stock" {
  default = {
    apple = 100
    banana = 200
  }
}

# How to access a list Variable; List index starts from Zero
output "fruit_first" {
  value = var.fruit_stock[0]
}
output "fruit_second" {
  value = var.fruit_stock[1]
}