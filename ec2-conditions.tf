resource "aws_instance" "ec2_conditions" {
  ami = var.ami_id
  instance_type = var.instance_name == "MongoDB" ? "t3.medium" : "t2.micro"
}