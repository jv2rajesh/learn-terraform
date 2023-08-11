variable "test" {}

output "test" {
  value = var.test
}



/*  command: terraform apply -auto-approve -var-file=dev.tfvars    */
/*  command: terraform apply -auto-approve -var-file=prod.tfvars   */


/* session-29 */