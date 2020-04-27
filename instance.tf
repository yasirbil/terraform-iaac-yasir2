resource "aws_instance" "web" {
  ami           = "ami-0d6621c01e8c2de2c"
  instance_type = "t2.large"
  key_name      = "${aws_key_pair.us-west-2-key.key_name}"
  user_data = "${file("user_data.sh")}"
  security_groups = ["${aws_security_group.allow_tls.name}"]
  tags = {
    Name = "Yasir Bilgin"
  }
}