variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "your-key-pair"
}

variable "my_ip" {
  description = "Your public IP for SSH access"
  default     = "YOUR_IP/32"
}
