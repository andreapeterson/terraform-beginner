resource "aws_key_pair" "test_key" {
  key_name   = "testkey1"          #test_key is name of the resource, testkey1 is going to be the actual name of the key in AWS
  public_key = file("testkey.pub") #File function reads the file, better than pasting the entire key here
}

resource "aws_instance" "test3" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = var.TYPE
  availability_zone      = var.ZONE1
  vpc_security_group_ids = ["sg-067f848c56a010961"]
  tags = {
    Name    = "test-terra"
    Project = "Test"
  }
  key_name  = aws_key_pair.test_key.key_name #Resource type + resource name + attribute name
  user_data = file("script.sh")
}

output "publicIP" {
  value = aws_instance.test3.public_ip
}