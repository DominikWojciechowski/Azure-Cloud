# Logic App - DEMO 01

## Goal

---

## Instruction

### 01-IaaC
Contains infrastructure as a code (IaaC) implementation.

1. **terraform** - Contains definition of resources in terraform
   1. **main** - Main folder which contains startup files and reference to modules
   1. **modules** - Modules of resources
   1. **configurations** - Configuration for each environment
1. **pipeline** - Deployment pipeline to run terraform scripts
   1. **azure-pipeline.yaml** - Definition of pipeline
   1. **templates** - Templates of pipeline building blocks (e.g. stages)

You can run terraform locally to test your code.
First, you have to create your config file or use existing one e.g. `demo.tfvars` with your configurations. 

Please also make sure, that you created storage account for terraform state files. It should be configured in `provider.tf` file. 

Then you can run terraform commands:
1. Go to "main" folder
1. `terraform init` - To initalize terraform
1. `terraform fmt` - To format file
1. `terraform validate` - To validate code
1. `terraform plan -var-file='../environments/demo.tfvars' -out=tfplan` - To plan 
1. `terraform apply tfplan` - To apply changes

**NOTE: Add "-var-file={pathToConfiguration}" to specify environment. E.g `terraform plan -var-file='../environments/demo.tfvars' -out=tfplan` **
