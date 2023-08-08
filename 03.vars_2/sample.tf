# 1. list variable
variable "fruits" {
  default = [ "apple", "banana" ]
}

# How to access a list Variable; List index starts from Zero
output "fruit_first" {
  value = var.fruits[0]
}
output "fruit_second" {
  value = var.fruits[1]
}