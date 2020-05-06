variable "vpc_cidr" {}
variable "region" {}
variable "private_subnet_cidr1"{}
variable "private_subnet_cidr2"{}
variable "private_subnet_cidr3"{}

variable "public_subnet_cidr1"{}
variable "public_subnet_cidr2"{}
variable "public_subnet_cidr3"{}

variable "tags"{
    type = "map"
}