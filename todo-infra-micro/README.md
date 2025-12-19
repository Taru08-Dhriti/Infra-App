# Terraform Azure DevOps Pipeline

This project contains an Azure DevOps YAML pipeline to deploy Azure resources
using Terraform.

---

## 🔹 What This Pipeline Does

- Supports multiple environments: `dev`, `preprod`, `prod`
- Uses Azure Storage Account for Terraform remote state
- Runs Terraform:
  - init
  - validate
  - plan
  - apply
- Runs basic security scans using `tfsec` and `tflint`
- Requires manual approval before applying changes
- Applies changes only from the `main` branch

---

## 📁 Folder Structure

├── azure-pipelines.yml
└── environment
├── dev
├── preprod
└── prod


---

## 🔐 Azure Requirements

- Two Azure DevOps service connections:
  - One for Terraform backend
  - One for resource deployment
- Service Principals must have **Contributor** access in Azure

---

## 🚀 How It Works

1. Push code to `feature/*` branch → Terraform plan & scans run
2. Merge to `main` branch
3. Manual approval is required
4. Terraform apply runs

---

## 🛠 Tools Used

- Terraform
- Azure DevOps
- Azure Storage Account
- tfsec
- tflint

---

## ✅ Notes

- Do not run apply directly on feature branches
- Use least privilege IAM roles
- Keep Terraform state secure

---

