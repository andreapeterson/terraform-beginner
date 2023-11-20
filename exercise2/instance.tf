resource "aws_instance" "test2" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = var.TYPE
  availability_zone      = var.ZONE1
  vpc_security_group_ids = ["sg-067f848c56a010961"]
  tags = {
    Name    = "test-terra"
    Project = "Test"
  }
}