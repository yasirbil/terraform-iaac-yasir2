resource "aws_route53_record" "www" {
  zone_id = "Z01014993OU5621AITDU9"
  name    = "www.yasirbilgin.com"
  type    = "A"
  ttl     = "60"
  records = ["${aws_instance.web.public_ip}"]
}