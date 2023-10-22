variable "region" {
    default = "eu-central-1"  # Frankfurt
}

variable "vpc_cidr" {
    default = "10.100.0.0/16"
}

variable "public_subnet_cidrs" {
    default = [
        "10.100.1.0/24",
        "10.100.2.0/24",
        "10.100.50.0/24"
    ]
}

variable "private_subnet_cidrs" {
    default = [
        "10.100.101.0/24",
        "10.100.102.0/24"
    ]
}

variable "database_subnet_cidrs" {
    default = [
        "10.100.201.0/24",
        "10.100.202.0/24"
    ]
}

variable "project_name" {
    default = "Final Project"
}

variable "tags" {
    default = {
        Owner   = "Anzhela and Tamara"
        Project = "Terraform VPC Module"

    }
}

variable "jenkins_key" {
    default = "devops-project-jenkins-key"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "instance_ami" {
    default = "ami-0d00cb6517ad29a53"  # Ubuntu20.04 with Jenkins Master Installed
}
