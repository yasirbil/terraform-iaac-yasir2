resource "aws_instance" "web" {
  ami           = "ami-0d6621c01e8c2de2c"
  instance_type = "t2.large"
  tags = {
    Name = "Yasir Bilgin"
  }
}

output "instance_id" {
  value       = "${aws_instance.web.id}"
}

output "instance_arn" {
  value       = "${aws_instance.web.arn}"
}

output "instance_ip" {
  value       = "${aws_instance.web.public_ip}"
}

output "instance_dns" {
  value       = "${aws_instance.web.public_dns}"
}

output "instance_zone" {
  value       = "${aws_instance.web.availability_zone}"
}