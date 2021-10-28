resource "aws_route_table_association" "ksh_rtas_a" {
  subnet_id = aws_subnet.ksh-puba.id
  route_table_id = aws_route_table.ksh_rt.id
}

resource "aws_route_table_association" "ksh_rtas_c" {
  subnet_id = aws_subnet.ksh-pubc.id
  route_table_id = aws_route_table.ksh_rt.id
}