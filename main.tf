provider "aws" {
  region = "eu-west-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "${var.own_ssh_key}"
}


resource "aws_instance" "my_instances" {
  ami = "ami-a625b8df"
  count = 1
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  key_name = "${aws_key_pair.deployer.id}"
}
