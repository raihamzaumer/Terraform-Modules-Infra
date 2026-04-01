# 🚀 Terraform AWS S3 Module

This module creates a **secure and reusable AWS S3 bucket** using Terraform.

It follows **industry best practices**:

* Private bucket (no public access)
* Versioning enabled
* Server-side encryption enabled
* Fully configurable using variables (no hardcoding)

---

## 📁 Module Structure

```
modules/
└── s3/
    ├── main.tf
    ├── variables.tf
    └── outputs.tf
```

---

## ⚙️ Features

✅ Creates an S3 bucket
✅ Blocks all public access (private by default)
✅ Enables versioning
✅ Enables server-side encryption
✅ Supports tagging
✅ Reusable across environments (dev, prod, etc.)

---

## 🧱 Resources Created

* aws_s3_bucket
* aws_s3_bucket_public_access_block
* aws_s3_bucket_versioning
* aws_s3_bucket_server_side_encryption_configuration

---

## 🔧 Usage (Root Module)

```hcl
module "s3_bucket" {
  source = "./modules/s3"

  bucket_name = "my-unique-bucket-name"

  force_destroy = true

  enable_versioning = true

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

  sse_algorithm = "AES256"

  tags = {
    Environment = "dev"
    Project     = "terraform-learning"
  }
}
```

---

## 📥 Input Variables

| Name                    | Description                | Type        | Default  |
| ----------------------- | -------------------------- | ----------- | -------- |
| bucket_name             | Name of the S3 bucket      | string      | required |
| force_destroy           | Delete bucket with objects | bool        | false    |
| enable_versioning       | Enable versioning          | bool        | true     |
| block_public_acls       | Block public ACLs          | bool        | true     |
| block_public_policy     | Block public policy        | bool        | true     |
| ignore_public_acls      | Ignore public ACLs         | bool        | true     |
| restrict_public_buckets | Restrict public buckets    | bool        | true     |
| sse_algorithm           | Encryption type            | string      | AES256   |
| tags                    | Resource tags              | map(string) | {}       |

---

## 📤 Outputs

| Name        | Description        |
| ----------- | ------------------ |
| bucket_id   | ID of the bucket   |
| bucket_arn  | ARN of the bucket  |
| bucket_name | Name of the bucket |

---

## 🔐 Security Best Practices Implemented

* 🚫 Public access fully blocked
* 🔐 Encryption enabled by default
* 📦 Versioning enabled to prevent data loss

---

## ▶️ How to Use

1. Initialize Terraform:

```
terraform init
```

2. Validate configuration:

```
terraform validate
```

3. Apply changes:

```
terraform apply -auto-approve
```

4. Destroy resources:

```
terraform destroy -auto-approve
```

---

## 📌 Notes

* Bucket name must be **globally unique**
* Avoid disabling public access unless necessary
* You can extend this module with:

  * Lifecycle rules
  * Logging
  * KMS encryption
  * Bucket policies

---

## 👨‍💻 Author

Created as part of DevOps Terraform learning 🚀

---
