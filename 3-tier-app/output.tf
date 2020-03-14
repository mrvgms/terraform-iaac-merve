output "full_list" {
  value = "${data.terraform_remote_state.dev.*}"
}
