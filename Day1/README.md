# Terraform with Azure - Complete Setup Guide

This guide will help you set up Terraform with Azure on Windows, configure credentials, and deploy your first resource group.

---

## Step 1: Install Terraform

1. Download Terraform from the [official website](https://www.terraform.io/downloads.html).
2. Add Terraform to your system `PATH` so it can be run from any terminal.
3. Verify installation:

```powershell
terraform version
Step 2: Install Azure CLI

Download and install Azure CLI from the official page
.

Verify installation:

az --version

Step 3: Login to Azure
az login


A browser window will open for you to sign in.

If you have multiple subscriptions, select the correct subscription.

To log in to a specific tenant:

az login --tenant <TENANT_ID>

Step 4: Configure Terraform Credentials

Terraform requires Azure credentials. You can set them temporarily or permanently.

Option 1: Temporary (PowerShell session)
$env:ARM_SUBSCRIPTION_ID="***"
$env:ARM_CLIENT_ID="***"
$env:ARM_CLIENT_SECRET="***"
$env:ARM_TENANT_ID="***"


These values are active only in the current PowerShell session.

Option 2: Permanent (PowerShell)
[System.Environment]::SetEnvironmentVariable("ARM_SUBSCRIPTION_ID", "***", "User")
[System.Environment]::SetEnvironmentVariable("ARM_CLIENT_ID", "***", "User")
[System.Environment]::SetEnvironmentVariable("ARM_CLIENT_SECRET", "***", "User")
[System.Environment]::SetEnvironmentVariable("ARM_TENANT_ID", "***", "User")


Close and reopen PowerShell to apply.

Option 3: Permanent (Command Prompt / cmd)
setx ARM_SUBSCRIPTION_ID "***"
setx ARM_CLIENT_ID "***"
setx ARM_CLIENT_SECRET "***"
setx ARM_TENANT_ID "***"


Close and reopen cmd or PowerShell to apply.

Step 5: Verify Environment Variables
echo $env:ARM_SUBSCRIPTION_ID
echo $env:ARM_CLIENT_ID
echo $env:ARM_CLIENT_SECRET
echo $env:ARM_TENANT_ID


Terraform will automatically use these variables.

Step 6: Create Your Terraform Project

Create a folder for your project:

C:\TerraformWithAzure\Day1


Inside the folder, create a file named main.tf with the following content:

provider "azurerm" {
  features {}
}

# Create a Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "rg-learning-azure"
  location = "SouthIndia"
}


Credentials are read from environment variables, so no secrets are in code.

Step 7: Initialize and Apply Terraform

Open a terminal in your project folder:

cd C:\TerraformWithAzure\Day1


Initialize Terraform:

terraform init


Check the execution plan:

terraform plan


Apply the configuration:

terraform apply


Type yes to confirm.
