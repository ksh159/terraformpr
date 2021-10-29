# Application LoadBalncer Deploy
resource "aws_lb" "ksh_lb" {
  name               = "ksh-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ksh_websg.id]
  subnets            = [aws_subnet.ksh-puba.id,aws_subnet.ksh-pubc.id]
 /*
    s3버킷에 로그저장
    access_logs {
    bucket  = aws_s3_bucket.lb_logs.bucket
    prefix  = "test-lb"
    enabled = true
  }  */
  tags = {
    Name = "ksh-alb"
  }
}