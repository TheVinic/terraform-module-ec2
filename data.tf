data "aws_ami" "linux" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["amzn2-ami-kernel-*-hvm-2.0.*-x86_64-gp2"]
  }
}