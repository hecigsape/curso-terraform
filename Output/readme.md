terraform init 
terraform plan -var-file="terraform.tfvars" -out plan.out
$ terraform apply "plan.out"