output "vpc_ID" {
  value = "${data.terraform_remote_state.dev.vpc_ID}"
}

output "Subnet1" {
  value = "${data.terraform_remote_state.dev.subnet1}"
}

output "Subnet2" {
  value = "${data.terraform_remote_state.dev.subnet2}"
}

output "Subnet3" {
  value = "${data.terraform_remote_state.dev.subnet3}"
}


output "Private_Subnet1" {
  value = "${data.terraform_remote_state.dev.Private_Subnet1}"
}


output "Private_Subnet2" {
  value = "${data.terraform_remote_state.dev.Private_Subnet2}"
}


output "Private_Subnet3" {
  value = "${data.terraform_remote_state.dev.Private_Subnet3}"
}
