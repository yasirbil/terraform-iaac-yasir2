resource "aws_key_pair" "US-east-1-key" {
  key_name   = "yasir-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}