resource "aws_vpc" "prod" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "prod_vpc"
  }
}

resource "aws_subnet" "public_prod" {
  vpc_id = aws_vpc.prod.id
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "public_sub"
  }
}

resource "aws_internet_gateway" "prod" {
  vpc_id = aws_vpc.prod.id
    tags = {
        Name = "prod_igw"
    } 
}

resource "aws_route_table" "prod" {
    vpc_id = aws_vpc.prod.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.prod.id

}
    tags = {
        Name = "prod_route_table"
    } 
}

resource "aws_route_table_association" "prod" {
    subnet_id = aws_subnet.public_prod.id
    route_table_id = aws_route_table.prod.id
}

resource "aws_security_group" "prod" {
  name        = "prod"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.prod.id

  tags = {
    Name = "prod_sg"
  }
  ingress {
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  } 
    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
}

}

resource "aws_subnet" "private_prod" {
  vpc_id = aws_vpc.prod.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "private_sub"
  }
}

resource "aws_eip" "prod" {

    
    tags = {
        Name = "prod_eip"
    }
  
}

  resource "aws_nat_gateway" "prod" {
    allocation_id = aws_eip.prod.id
    subnet_id     = aws_subnet.public_prod.id
    tags = {    
        Name = "prod_nat_gw"
    }
    
  }
resource "aws_route_table" "prod_private_rt" {
    vpc_id = aws_vpc.prod.id

  route {
    cidr_block = "0.0.0.0/0"
   nat_gateway_id = aws_nat_gateway.prod.id

}
    tags = {
        Name = "prod_private_route_table"
    } 
}
resource "aws_route_table_association" "prod_private_rt" {
    subnet_id = aws_subnet.private_prod.id
    route_table_id = aws_route_table.prod_private_rt.id
}


