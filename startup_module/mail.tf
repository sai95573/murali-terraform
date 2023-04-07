resource "aws_instance" "mail" {
  /* count = var.mail_count */
  count = var.want_mail == true ? var.mail_count : 0
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = var.ssh_keyname
  tags = {
    Name = "Mail-${count.index}"
  }
}
