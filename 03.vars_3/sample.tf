# 2. Map variable, Plain
#    And how to access a Map Variable;


variable "fruit_stock" {
  default = {
    apple = 100
    banana = 200
  }
}

output "fruit_stock_apple" {
  value = var.fruit_stock["apple"]
}
output "fruit_stock_banana" {
  value = var.fruit_stock["banana"]
}