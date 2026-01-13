<h1>🚀 Terraform AWS EC2 Instance Creation</h1>

<h1>📌 Project Overview</h1>

This project demonstrates how to provision an AWS EC2 instance using Terraform.
Terraform is used as an Infrastructure as Code (IaC) tool to automate the creation of cloud resources in a repeatable and reliable way.

🧱 Architecture

AWS Provider

EC2 Instance (t3.micro)

Region: us-east-1

📂 Project Structure
terraform-ec2-project/
│
├── main.tf
├── README.md
└── .gitignore

⚙️ Prerequisites

<h1>Before running this project, make sure you have:</h1>

1) AWS Account
2) AWS CLI installed
3) Terraform installed
4) AWS Access Key & Secret Key configured

<h1>Configure AWS credentials:</h1>

aslo check the main.tf file

aws configure

📝 Terraform Configuration (main.tf)
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "mywebserver" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}

<h1>🚀 Steps to Create EC2 Instance Using Terraform</h1>
1️⃣ Initialize Terraform
terraform init

2️⃣ Validate Configuration
terraform validate

3️⃣ Preview the Plan
terraform plan

4️⃣ Apply Configuration
terraform apply


Type yes when prompted.

✅ Output

After successful execution:

An EC2 instance is created in AWS

Instance is visible in AWS EC2 Dashboard

Infrastructure is managed by Terraform state

<h1>🧹 Destroy Resources (Optional)</h1>

To delete the EC2 instance:

terraform destroy

<h1>🔐 Security Best Practices</h1>

AWS credentials are not hardcoded

.terraform/ and terraform.tfstate are ignored using .gitignore

No sensitive data pushed to GitHub

<h1>📌 Why Terraform?</h1>

1) Infrastructure as Code
2) Automation & consistency
3) Easy resource management
4) Version control friendly

<h1>📎 Conclusion</h1>

This project helps understand how Terraform can be used to automate AWS infrastructure creation efficiently and securely.

