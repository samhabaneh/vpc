
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "main" {
  for_each = var.subnet_numbers
  vpc_id            = aws_vpc.main.id
  availability_zone = each.key
  cidr_block        = each.value
}

