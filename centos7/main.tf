provider "aws" {
  region = "eu-west-1"
  version = "~> 2.0"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "${var.own_ssh_key}"
}

resource "aws_instance" "my_centos7" {
  ami = "ami-0ff760d16d9497662" 
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.deployer.id}"
  vpc_security_group_ids = [aws_security_group.instance.id]
}

resource "aws_security_group" "instance" {

  name = var.security_group_name

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }

  lifecycle {
    create_before_destroy = true
  }

}

output "public_ip" {
  value       = aws_instance.my_centos7.public_ip
  description = "The public IP of the Instance"
}
