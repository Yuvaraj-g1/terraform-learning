resource "aws_vpc" "prs" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "parth"
  }
}


resource "aws_subnet" "prs-subnet1" {
  vpc_id     = aws_vpc.prs.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prs-subnet1"
  }
}

resource "aws_subnet" "prs-subnet2" {
  vpc_id     = aws_vpc.prs.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "prs-subnet2"
  }
}


provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
