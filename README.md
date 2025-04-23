# 🚀 Deploy Dynamic Web App on AWS with CI/CD Pipelines using GitHub Actions

This project demonstrates how to deploy a **dynamic web application** on **AWS** using **Terraform (IaC)** and **CI/CD pipelines with GitHub Actions**. The setup includes secure infrastructure deployment, Dockerized app deployment to ECS, and automated workflows for streamlined DevOps processes.

---

## 📌 Features

- Infrastructure as Code using Terraform
- Secure Terraform state management with S3 and DynamoDB
- CI/CD automation via GitHub Actions
- Dockerized deployment with Amazon ECR & ECS Fargate
- Self-hosted GitHub Runner on EC2 for private subnet tasks
- Secrets management with AWS Secrets Manager
- RDS database migration using Flyway

---

## 🧰 Tools & Services Used

- **AWS**: EC2, ECS Fargate, ECR, RDS, S3, DynamoDB, IAM, Secrets Manager
- **Terraform**: Infrastructure provisioning
- **GitHub Actions**: CI/CD pipeline automation
- **Docker**: Containerization
- **Flyway**: Database migration

---

## 🧪 Project Workflow Overview

### 1. 🔐 SSH Key & GitHub Setup
- Generate SSH key pair and add public key to GitHub.

### 2. 👤 IAM User & Named Profile
- Create IAM user with `AdministratorAccess`.
- Set up AWS named profile for Terraform authentication.

### 3. 🗃️ Terraform Backend
- Store Terraform state file in **S3**.
- Lock state using **DynamoDB**.

### 4. 🗝️ Secrets Management
- Store DB credentials and ECR URI in **Secrets Manager**.

### 5. ✅ Terraform Apply
- Modify `terraform.tfvars` and validate with `terraform apply`.

### 6. ⚙️ GitHub Actions Setup
- Add repository secrets.
- Create GitHub Actions workflow YAML files.

### 7. 🐳 Docker & ECR
- Build Docker image on EC2 self-hosted runner.
- Push Docker image to **ECR**.

### 8. ☁️ EC2 Self-Hosted Runner
- Create AMI of Docker-installed EC2 instance.
- Use AMI to start runner during workflow execution.

### 9. 📥 Environment Variables
- Upload environment variables file to **S3** for ECS containers.

### 10. 🛢️ RDS Migration
- Use Flyway on EC2 runner to migrate SQL to RDS.

### 11. 🔁 ECS Service Deployment
- Create new Task Definition revision.
- Restart ECS service to deploy latest container.

---

## 📂 Folder Structure

