<h1>🚀 Terraform AWS EC2 Instance Creation</h1>

<h1>📌 Project Overview</h1>

This project demonstrates how to provision an AWS EC2 instance using Terraform.
Terraform is used as an Infrastructure as Code (IaC) tool to automate the creation of cloud resources in a repeatable and reliable way.

<h1>NOTE:-</h1>
1) if in the Instance AMI is change then the terraform is first do terminate the first instance then create a new instance
<h1>🧱 Architecture</h1>

1) AWS Provider
2) EC2 Instance (t3.micro)
3) Region: us-east-1

<h1>📂 Project Structure</h1>
terraform-ec2-project/
│
├── main.tf
├── README.md
└── .gitignore

<h1>⚙️ Prerequisites</h1>

<h1>Before running this project, make sure you have:</h1>

1) AWS Account
2) AWS CLI installed
3) Terraform installed
4) AWS Access Key & Secret Key configured

<h1>Configure AWS credentials:</h1>

<h1>aslo check the main.tf file</h1>

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
1️⃣ Initialize Terraform<br>
terraform init<br>
2️⃣ Validate Configuration<br>
terraform validate<br>
3️⃣ Preview the Plan<br>
terraform plan<br>
4️⃣ Apply Configuration<br>
terraform apply<br>
Type yes when prompted.

<h1>✅ Output</h1>

After successful execution:
An EC2 instance is created in AWS
Instance is visible in AWS EC2 Dashboard

Infrastructure is managed by Terraform state

<h1>🧹 Destroy Resources (Optional)</h1>
To delete the EC2 instance:

1) terraform destroy

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

