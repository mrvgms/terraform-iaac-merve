resource "aws_route53_record" "wordpress" {
  zone_id = "Z2K02JVXORGC2M"
  name    = "wordpress.merv3.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web.public_ip}"]
}