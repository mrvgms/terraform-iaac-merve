output "vpc_ID" {
  value = "${module.dev.vpc_ID}"
}

output "subnet1" {
  value = "${module.dev.subnet1}"
}

output "subnet2" {
  value = "${module.dev.subnet2}"
}

output "subnet3" {
  value = "${module.dev.subnet3}"
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
