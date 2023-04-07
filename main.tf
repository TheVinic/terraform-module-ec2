resource "aws_instance" "this" {
  count = var.quantity_instances

  ami = data.aws_ami.linux.image_id
  instance_type = "t3.micro"
  key_name = var.key_instance

  tags = {
    Name = "${var.project} ${count.index}"
  }
}