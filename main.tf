provider "aws" {
  region                  = "us-east-2"
  profile = "ruslan.simakov"
}

resource "aws_instance" "web" {
  instance_type = "t2.micro"

  tags = {
    Name = "EC2 RS"
  }
  ami = "ami-05d72852800cbf29e"
}
