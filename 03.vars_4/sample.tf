# 3. Map varaible; Map of Maps
#    And how to access a Map variable

variable "fruit_stock_with_price" {
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

output "papaya_price" {
  value = var.fruit_stock_with_price["papaya"].price
}