# 가용영역 a의 Public Subnet
resource "aws_subnet" "ksh-puba" {
  vpc_id            = aws_vpc.ksh_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "ksh-puba"
  }
}

# 가용영역 a의 Private Subnet
resource "aws_subnet" "ksh-pria" {
  vpc_id            = aws_vpc.ksh_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "ksh-pria"
  }
}

# 가용영역 c의 Public Subnet
resource "aws_subnet" "ksh-pubc" {
  vpc_id            = aws_vpc.ksh_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "ksh-pubc"
  }
}

# 가용영역 c의 Private Subnet
resource "aws_subnet" "ksh-pric" {
  vpc_id            = aws_vpc.ksh_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "ksh-pric"
  }
}