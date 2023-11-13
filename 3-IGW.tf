resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.app1.id

  tags = {
    Name = "app1_IGW01"
    Service = "application1"
    Owner = "AWS Warriors"
    Location = "London"
  }
}
