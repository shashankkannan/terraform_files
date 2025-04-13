resource "aws_instance" "ans" {
  ami = "ami-02cd5b9bfb2512340"
  instance_type = "t2.micro"

  tags = {Name = "Github module"}
}