provider "aws" {
  region = var.aws_region
}

# Security Group for Nginx Server
resource "aws_security_group" "nginx_sg" {
  name        = "nginx_sg"
  description = "Allow HTTP and SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Deploy Nginx Server on EC2
resource "aws_instance" "nginx_server" {
  ami             = "ami-0c55b159cbfafe1f0"
  instance_type   = var.instance_type
  key_name        = var.key_name
  security_groups = [aws_security_group.nginx_sg.name]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras enable docker
              yum install -y docker
              systemctl start docker
              systemctl enable docker
              
              # Create index.html in /home/ec2-user
              echo "<h1>Hello from My Terraform Nginx Server!</h1>" > /home/ec2-user/index.html
              chmod 644 /home/ec2-user/index.html
              
              # Run Nginx container with volume mapping
              docker run -d -p 80:80 --name nginx \
                -v /home/ec2-user/index.html:/usr/share/nginx/html/index.html \
                nginx
              EOF

}

# Output Public IP
output "instance_public_ip" {
  value = aws_instance.nginx_server.public_ip
}
