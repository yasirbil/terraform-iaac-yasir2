vpc_cidr = "192.168.0.0/16"
region = "us-east-1"

public_subnet_cidr1 = "192.168.1.0/24"
public_subnet_cidr2 = "192.168.2.0/24"
public_subnet_cidr3 = "192.168.3.0/24"


private_subnet_cidr1 = "192.168.11.0/24"
private_subnet_cidr2 = "192.168.12.0/24"
private_subnet_cidr3 = "192.168.13.0/24"

tags = {
   Name = "VPC_Project"
   Environment = "Dev"
   Department = "IT"
   Team = "Infrastructure"
   Created_by = "Yasir"

}