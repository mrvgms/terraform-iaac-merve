resource "aws_elb" "bar" {
  name               = "wordpress-terraform-elb"
  subnets            = [
                                "${data.terraform_remote_state.dev.subnet1}",
                                "${data.terraform_remote_state.dev.subnet2}", 
                                "${data.terraform_remote_state.dev.subnet3}"
                             ]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }


  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  instances                   = ["i-01e763edd88d04c05"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "foobar-terraform-elb"
  }
}