variable "fruits" {
  default = [ "apple", "banana"]
}
output "fruit" {
  value = element(var.fruits,1)
}

variable "fruit_with_stock" {
  default = {
    apple = {
      stock = 100
    }
  }
}

output "fruit_stock" {
  value = try(var.fruit_with_stock.banana,0)
}