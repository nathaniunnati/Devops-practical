# Devops-practical
# DevOps Practical Assessment — My Solution

## Overview
Short summary and decisions (Fargate vs EC2, VPC decision, security highlights).

## How to run locally
1. `cd app`
2. `docker build -t mynodeapp:latest .`
3. `docker run --rm -p 3000:3000 mynodeapp:latest`
4. `curl http://localhost:3000`

## Terraform deployment
Prereqs:
- AWS CLI configured
- Terraform >= 1.0
- S3 bucket & DynamoDB created for Terraform backend (or modify provider/backend accordingly)

Deploy:
```bash
cd terraform
terraform init
terraform plan -var="image_uri=<ECR_IMAGE_URI>" -out plan.tf
terraform apply plan.tf
