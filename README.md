# VPC and EC2 Deployment with Jenkins and Ansible

This Terraform code creates a Virtual Private Cloud (VPC) infrastructure on AWS, consisting of various subnets, including public, private, and isolated (database) subnets. Additionally, it provisions EC2 instances with pre-installed Jenkins and Ansible services.

## Infrastructure Overview

The infrastructure created by this Terraform script includes:

- **VPC Configuration**: Creates a Virtual Private Cloud with appropriate CIDR blocks.
- **Subnets**: Sets up three public subnets, two private subnets with NAT gateway, and two isolated (database) subnets.
- **Internet Gateway**: Attaches an internet gateway to the VPC for public subnet internet access.
- **NAT Gateway**: Configures NAT gateways for private subnet internet access.
- **EC2 Instances**: Deploys two EC2 instances:
  - Jenkins Master: Installed on a public subnet.
  - Ansible Master: Installed on a private subnet.

## Outputs

Upon successful deployment, the Terraform script provides the following outputs:

- `ansible_private_ip`: Private IP address of the Ansible Master EC2 instance.
- `database_subnet_1_id`: ID of the first database subnet.
- `database_subnet_2_id`: ID of the second database subnet.
- `jenkins_private_ip`: Private IP address of the Jenkins Master EC2 instance.
- `jenkins_public_ip`: Public IP address of the Jenkins Master EC2 instance.
- `private_subnet_1_id`: ID of the first private subnet.
- `private_subnet_2_id`: ID of the second private subnet.
- `public_subnet_1_id`: ID of the first public subnet.
- `public_subnet_2_id`: ID of the second public subnet.
- `public_subnet_3_id`: ID of the third public subnet.
- `vpc_id`: ID of the created VPC.

## Usage

1. **Clone the Repository**: 
git clone https://github.com/anzhela-iondem/vpc_jenkins_ansible.git

2. **Initialize Terraform**:
terraform init

3. **Review and Modify Variables (if needed)**: 
Adjust variables.tf file to match your requirements.

4. **Deploy Infrastructure**:
terraform apply

5. **Access Jenkins**: 
Once the deployment is complete, you can access Jenkins using the provided public IP address.

6. **Use Ansible**: 
Ansible is configured on the private subnet. You can use it for configuration management and automation tasks within your infrastructure.

## Note
- Ensure you have appropriate AWS credentials configured for Terraform to access your AWS account.
- Review and modify security settings and access controls as per your organization's policies.
