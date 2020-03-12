output "VPC_ID" {
  value = "${module.dev.VPC_ID}"
}

output "subnet1" {
  value = "${module.dev.Subnet1}"
}

output "subnet2" {
  value = "${module.dev.Subnet2}"
}

output "subnet3" {
  value = "${module.dev_Private3.Subnet3}"
}

output "Private_Subnet1" {
  value = "${module.dev.Private_Subnet1}"
}

output "Private_Subnet2" {
  value = "${module.dev.Private_Subnet2}"
}

output "Private_Subnet3" {
  value = "${module.dev.Private_Subnet3}"
}
output "IGW" {
  value       = "${module.dev.IGW}" 
}
