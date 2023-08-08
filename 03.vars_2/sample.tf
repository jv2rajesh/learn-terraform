# 1. list variable
#    And how to access a list Variable; List index starts from Zero

variable "fruits" {
  default = [ "apple", "banana" ]
}

output "fruit_first" {
  value = var.fruits[0]
}
output "fruit_second" {
  value = var.fruits[1]
}