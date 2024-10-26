Description:
Provisioning an AWS EC2 to run Nexus artifactory.
Prerequisites:

Terraform version: ~>1.3.3
AWS Provider: ~>4.0.0

Provider:

Source = hashicorp/aws
Version = ~>4.0
Backend = S3 bucket

Installation:

Install Terraform.
Configure S3 bucket
Terraform configuration files.

Usage:

Run terraform init to initialize the project.
Run terraform plan to plan the resources.
Run terraform apply to create the resources.

Variables:


region: AWS region (required)

instance_type: EC2 instance type (default: t3.medium)

Outputs:


public_ip: Public IP address of the created EC2 instance
`aws_route53_record: Assigned domain to access via web.

Accessing Nexus:
#Once you have successfully ran the terraform code to deploy nexus, you will need to access nexus via your web browswe by clicking this link https://nexus.lamtech.io. Once this has been accessed, you will need to click on "sign in" in the top right hand corner and then follow the instructions below to access the default password.

ssh into your server - ssh -i "lamtech-cms-key.pem" ec2-user@ec2-xx-xx-xxx-xx.eu-west-2.compute.amazonaws.com.
Run command 'cat /opt/sonatype-work/nexus3/admin.password` and copy the password.
Enter the credentials in nexus using;
username:admin
password: default password
You will be prompted to reset the admin credentials to
username: admin
password: "password of your choice"

Next steps:
For instructions on how to push jar files into nexus please click on the link here - https://lamtech.atlassian.net/wiki/spaces/DT/pages/1056112644/Upload+JAR+onto+NEXUS
