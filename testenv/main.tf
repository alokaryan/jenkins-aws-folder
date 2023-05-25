provider "aws" {
  region = "ap-south-1" #mumbai region
}

provider "aws" {
   region = "us-east-1" #virginia region
   alias = "usa"
}

resource "aws_instance" "indiaserver" {
  ami = "ami-0c1a7f89451184c8b" #this ami is specific to mumbai region
  instance_type = "t2.micro"
  tags = {
     Name = "india-server-new"
   }
}
