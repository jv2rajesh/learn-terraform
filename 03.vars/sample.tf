varaible "fruit_name" {
  default = "apple"
}

output "fruit_name" {
  value = var.fruit_name
}

#list variable
variable "fruits" {
  default = [ "apple", "banana" ]
}

# Map variable, Plain
variable "fruit_stock" {
  default = {
    apple = 100
    banana = 200
  }
}

# Map varaible; Map of Maps
varaible "fruit_stock_with_price" {
  default = {
    papaya = {
      stock = 100
      price = 5
    }
    lichi = {
      stock = 200
      price = 2
    }
  }
}

# How to access a list Variable; List index starts from Zero
output "fruit_first" {
  value = var.fruit_stock[0]
}
output "fruit_second" {
  value = var.fruit_stock[1]
}

# How to access a Map variable