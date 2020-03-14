module "wordpress" {
  name = "wordpress"
  source = "terraform-aws-modules/autoscaling/aws"
  version = "2.12.0"
  lc_name = "wordpress-lc"
  # Launch configuration
  lc_name = "wordpress-lc"

  image_id        = "${data.aws_ami.ubuntu.id}"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.allow_tls.id}"]

  # Auto scaling group
  asg_name                  = "wordpress-asg"
  vpc_zone_identifier       = [
                                "${data.terraform_remote_state.dev.subnet1}",
                                "${data.terraform_remote_state.dev.subnet2}", 
                                "${data.terraform_remote_state.dev.subnet3}"
                             ]
  health_check_type         = "EC2"
  min_size                  = 3
  max_size                  = 5
  desired_capacity          = 3
  wait_for_capacity_timeout = 0
}