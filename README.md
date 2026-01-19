# SRE-Terraform-Assessment
# Terraform Azure Virtual Machine Project

## Overview

This repository contains a **simple, clean, and industry-standard Terraform configuration** to provision basic infrastructure on **Microsoft Azure**.

The project demonstrates how to use **Infrastructure as Code (IaC)** to create:

* An Azure Resource Group
* A Virtual Network and Subnet
* A Network Interface
* A Linux Virtual Machine
* A Storage Account
* Remote Terraform state using Azure Blob Storage

The configuration is intentionally kept **minimal and easy to understand**, focusing only on the components that matter.

---

## Folder Structure

```
terraform-azure-vm/
│
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── backend.tf
├── terraform.tfvars
├── .gitignore
│
└── README.md
```

### Why this structure?

* Clear separation of concerns
* Easy to maintain and collaborate
* Matches real-world Terraform projects
* Scales well for future modules

---

## Prerequisites

Before running this project, ensure you have:

* Terraform installed (>= 1.4.0)
* An active Azure subscription
* Azure CLI installed and logged in
* An existing Azure Storage Account for remote state
* An SSH key pair for VM access

---

## Authentication

Terraform authenticates to Azure using a **Service Principal**.

Set the following environment variables:

```bash
export ARM_CLIENT_ID="xxxx"
export ARM_CLIENT_SECRET="xxxx"
export ARM_SUBSCRIPTION_ID="xxxx"
export ARM_TENANT_ID="xxxx"
```

This approach is secure and commonly used in automation and CI/CD pipelines.

---

## Terraform Files Explanation

### provider.tf

Defines Terraform version constraints and configures the Azure provider.

### backend.tf

Configures **remote state storage** using Azure Blob Storage.
This enables collaboration and prevents state conflicts.

> Note: The backend storage account must exist before running `terraform init`.

### variables.tf

Declares input variables to avoid hardcoding values and improve reusability.

### terraform.tfvars

Provides environment-specific values without modifying Terraform code.

### main.tf

Defines the core infrastructure:

* Resource Group
* Virtual Network and Subnet
* Network Interface
* Linux Virtual Machine
* Storage Account

Only essential attributes are used to keep the configuration simple and readable.

### outputs.tf

Displays useful information such as resource group name, VM name, and storage account name after deployment.

---

## How to Use

### Initialize Terraform

```bash
terraform init
```

### Preview Changes

```bash
terraform plan
```

### Apply Configuration

```bash
terraform apply
```

---


---

## Purpose of This Project

This project is designed for:

* Terraform learning and practice
* Academic or assignment submission
* Demonstrating Azure VM provisioning
* Understanding Terraform state and structure


---

## Cleanup

To remove all resources created by Terraform:

```bash
terraform destroy
```

---

## Author

Created as part of a Terraform assignment using Azure
