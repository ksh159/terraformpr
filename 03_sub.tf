# 가용영역 a의 Public Subnet
resource "aws_subnet" "ksh_puba" {
  vpc_id = aws_vpc.ksh_vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "ksh-puba"
  }
}

resource "aws_subnet" "ksh_pria" {
  vpc_id = aws_vpc.ksh_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "ksh-pria"
  }
}

resource "aws_subnet" "ksh_pubc" {
  vpc_id = aws_vpc.ksh_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "ksh-pubc"
  }
}

resource "aws_subnet" "ksh_pric" {
  vpc_id = aws_vpc.ksh_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "ksh-pric"
  }
}