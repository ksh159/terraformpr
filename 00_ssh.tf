resource "aws_key_pair" "ksh-key" {
  key_name = "tf-key"
  public_key = file("../../.ssh/id_rsa.pub")
}