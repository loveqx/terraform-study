provider "aws" {
   region="us-east-2"
}

resource "aws_instance" "example" {
   ami = "ami-0c55b159cbfafe1f0"
   instance_type = "t2.micro"
   vpc_security_group_ids = [aws_security_group.instance.id]
   key_name                   = var.key_name
   user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install apache2 -y
              sudo service apache2 start
              EOF

   tags =  {

     Name = "terrform-test"

   }
}

resource "aws_security_group" "instance" {
  name = " terrform-example-instance"
  ingress {
     from_port = var.server_port
     to_port = var.server_port
     protocol = "TCP"
     cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
     from_port = var.ssh_port
     to_port = var.ssh_port
     protocol = "TCP"
     cidr_blocks = ["0.0.0.0/0"]
  }
}
