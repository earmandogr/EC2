# Project E – Basic Infrastructure as Code with Terraform

This project demonstrates how to use **Terraform** to provision a basic AWS EC2 instance in a reproducible and version-controlled way.

##  Stack Used

- **Terraform v1.12+**
- **AWS EC2**
- **Amazon Linux 2023 AMI**
- Free Tier compatible

---

##  Files

| File             | Description                                     |
|------------------|-------------------------------------------------|
| `main.tf`        | Main Terraform configuration: provider + EC2    |
| `variables.tf`   | Variables for region, AMI, and instance type    |
| `outputs.tf`     | Shows public IP of the deployed instance        |
| `.gitignore`     | Excludes state and cache files from git         |
| `.terraform.lock.hcl` | Locks provider version for reproducibility |

---

##  How to Use

1. Initialize the directory:
   ```bash
   terraform init

