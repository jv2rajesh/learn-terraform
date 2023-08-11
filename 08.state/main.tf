terraform {
  backend "s3" {
    bucket = "jv2rajesh"
    key    = "08.state/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "test" {
  default = "hello world"
}

output "test"{
  value = var.test
}




/* https://developer.hashicorp.com/terraform/language/settings/backends/s3 */

/* A backend defines where Terraform stores its state data files.

  Terraform uses persisted state data to keep track of the resources it manages. Most non-trivial Terraform configurations either integrate with Terraform Cloud or use a backend to store state remotely. This lets multiple people access the state data and work together on that collection of infrastructure resources.

*/

/* session-29 */
