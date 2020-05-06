##Private Subnet#####
resource "aws_subnet" "private1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.private_subnet_cidr1}"
  tags = "${var.tags}"
  map_public_ip_on_launch = false
}

resource "aws_subnet" "private2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.private_subnet_cidr2}"
  tags = "${var.tags}"
  map_public_ip_on_launch = false
}

resource "aws_subnet" "private3" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.private_subnet_cidr3}"
  tags = "${var.tags}"
  map_public_ip_on_launch = false
}


##Public Subnet######
resource "aws_subnet" "public1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.public_subnet_cidr1}"
  tags = "${var.tags}"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public2" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.public_subnet_cidr2}"
  tags = "${var.tags}"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public3" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.public_subnet_cidr3}"
  tags = "${var.tags}"
  map_public_ip_on_launch = true
}