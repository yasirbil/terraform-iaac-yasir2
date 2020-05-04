provider "aws" {
  region = "us-west-2"
  version = "2.59"
}

// Creates Key
resource "aws_key_pair" "us-west-2-key-output" {
  key_name   = "oregon_key_output"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

// Creates instance
resource "aws_instance" "web_output" {
  ami           = "ami-0d6621c01e8c2de2c"
  instance_type = "t2.large"
  }

// Creates Sec Group
resource "aws_security_group" "allow_tls_output" {
  name        = "allow_tls_output"
  description = "allow TLS inbound traffic"
}
// Creates Route53
resource "aws_route53_record" "www_output" {
  zone_id = "Z01014993OU5621AITDU9"
  name    = "www.yasirbilgin.com"
  type    = "A"
  ttl     = "60"
  records = ["${aws_instance.web_output.public_ip}"]
}

// Outputs everything

output "key_pair" {
  value       = "${aws_key_pair.us-west-2-key-output.key_name}"
}

 output "instance_id" {
  value       = "${aws_instance.web_output.id}"
}

 output "instance_ip" {
  value       = "${aws_instance.web_output.public_ip}"
}

 output "instance_arn" {
  value       = "${aws_instance.web_output.arn}"
}

 output "instance_dns" {
  value       = "${aws_instance.web_output.public_dns}"
}

 output "my_message" {
  value       = "Please login and change password"
}
