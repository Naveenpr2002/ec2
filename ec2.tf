resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/24"
    tags = {
      Name="rahees-vpc"
    }
  
}
resource "aws_subnet" "public" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.0.128/25"
    tags = {
      Name="rahees-subnet1"
    }
  
}
resource "aws_subnet" "private"{
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.0.64/26"
}   

