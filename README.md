##  Nginx web server on AWS EC2 using Terraform and Docker


##  Overview :

 This project automates the deployment of an Nginx web server on AWS EC2 using Terraform and Docker. The goal is to create an easy, scalable, and repeatable infrastructure setup that runs a web server with minimal effort.


##  Features:

 AWS EC2 Deployment → Uses Terraform to launch an EC2 instance.
 
 Nginx Web Server → Runs inside a Docker container.
 
 Automated Setup → EC2 instance installs Docker & starts Nginx automatically.
 
 Security Group Configured → Allows HTTP (80) and SSH (22) access.
 
 Outputs Public IP → Easily access the server in a browser.
 

## Technologies Used

 Terraform → Infrastructure as Code (IaC) to provision AWS resources

 AWS EC2 → Virtual machine to run Nginx inside Docker

 Docker → Runs Nginx in a containerized environment

 AWS Security Group → Manages inbound traffic (HTTP & SSH)

 Amazon Linux 2 → Base operating system for the EC2 instance
 

##  Structure:

 terraform-nginx-server
 
               ┣  variables.tf # Variables file
               
               ┣  main.tf # Main Terraform configuration 
               
               ┣  outputs.tf # Outputs file 
               
               ┣  README.md # Project documentation       


## Prerequisites:

 Terraform → Install Guide

 AWS CLI → Configure AWS credentials using aws configure

 AWS Key Pair → A valid key pair for SSH access               


##  Deployment Steps:

 Initalize & Apply the Terraform.
 
 Access Nginx in Browser.

 Destroy Resources (Optional).


##  Expected Output:

 After deployment, visiting http://<EC2-PUBLIC-IP> in a browser will display the default NGINX welcome page with the message: "Hello from My Terraform Nginx Server!".


## Conclusion:

 This project demonstrates how to efficiently deploy an Nginx web server on AWS using Terraform and Docker. By automating infrastructure provisioning, we created a lightweight, reusable, and scalable solution for web hosting.
 
 
