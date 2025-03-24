output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.nginx_server.public_ip
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.nginx_server.id
}

output "instance_ami" {
  description = "AMI ID used for the instance"
  value       = aws_instance.nginx_server.ami
}

output "security_group_id" {
  description = "Security Group ID"
  value       = aws_security_group.nginx_sg.id
}
