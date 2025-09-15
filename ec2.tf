provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2" {
  ami           = "ami-0c50b6f7dc3701ddd"
  instance_type = "t2.micro"
}

resource "aws_eip" "ec2-eip" {
  instance = aws_instance.ec2.id

}

output "eip" {
  value = aws_eip.ec2-eip.public_ip
}
