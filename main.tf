provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "three" {
  count         =  3
  ami           = "ami-0aebec83a182ea7ea"
  instance_type = "t2.small"
  key_name      = "MY4pm"
  tags = {
    Name = "mumbai-server"
  }
}

resource "aws_s3_bucket" "abcd" {
bucket = "devopsherahamshaik0099889977hcpankaj"
}
