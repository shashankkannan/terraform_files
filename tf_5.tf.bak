provider "aws" {
  region = "ca-central-1"
}
data "aws_ami" "os" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name = "name"
    values = [ "amzn2-ami-kernel-5.10-hvm-2.0.*" ]
  }
}

resource "aws_instance" "instance_1" {
  ami = data.aws_ami.os.image_id
  instance_type = "t2.micro"
  count = 2
  tags = {
  Name="ec2_instance_${count.index}"
  A = "1"
  B = "${count.index}"
  }
}

output "ami_value" {
  value = data.aws_ami.os.image_id
}

output "instance_arn_ami" {
  value = [
    for inst in aws_instance.instance_1 :
    "${inst.arn}: ${inst.ami}"
  ]
}