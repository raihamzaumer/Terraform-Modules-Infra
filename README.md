# 🚀 Terraform Modules Infra

Reusable and production-ready **Terraform modules** for provisioning AWS infrastructure including **VPC, EC2, and S3**. Designed for scalability, security, and easy reuse.

---

## 📌 Features

* Modular Infrastructure (VPC, EC2, S3)
* Reusable & Scalable Design
* Secure Networking (public/private subnets)
* EC2 with Nginx setup
* S3 with versioning & static website hosting
* Clean and organized structure

---

## 📁 Project Structure

```
Terraform-Modules-Infra/
├── modules/
│   ├── vpc/
│   ├── ec2/
│   └── s3/
├── website/
├── main.tf
├── variables.tf
├── output.tf
└── .gitignore
```

---

## ⚙️ Prerequisites

* Terraform installed
* AWS CLI configured
* IAM user with proper permissions

---

## 🚀 Usage

```bash
terraform init
terraform plan
terraform apply
```

---

## 🌐 Modules

* **VPC:** Custom network with subnets & routing
* **EC2:** Configurable instance with Nginx
* **S3:** Secure bucket with versioning & hosting

---

## 🔐 Best Practices

* Modular design
* No hardcoding (uses variables)
* Secure defaults
* Clean Git structure

---

## 📌 Use Cases

* Static website hosting
* Backend deployment
* DevOps practice projects

---

## 🔮 Future Improvements

* RDS module
* Load Balancer
* CI/CD integration
* Remote backend setup

---

## 👨‍💻 Author

Hamza – DevOps Learner 🚀
