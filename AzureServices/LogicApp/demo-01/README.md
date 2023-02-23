# Logic App - DEMO 01

## Goal

---

## Instruction

### 01-IaaC
Contains infrastructure as a code (IaaC) implementation.

1. **terraform** - Contains definition of resources in terraform
   1. **main** - Main folder which contains startup files and reference to modules
   2. **modules** - Modules of resources
   3. **configurations** - Configuration for each environment
2. **pipeline** - Deployment pipeline to run terraform scripts
   1. **azure-pipeline.yaml** - Definition of pipeline
   2. **templates** - Templates of pipeline building blocks (e.g. stages)

You can run terraform locally to test your code.
First, you have to create your config file or use existing one e.g. `dev.tfvars` with your configurations. 

Then you can run terraform commands:

1. `terraform init` - To initalize terraform
2. `terraform fmt` - To format file
3. `terraform validate` - To validate code
4. `terraform plan -var-file='../environments/dev.tfvars' -out=tfplan` - To plan 
5. `terraform apply tfplan` - To apply changes

**NOTE: Add "-var-file={pathToConfiguration}" to specify environment. E.g `terraform plan -var-file='../environments/dev.tfvars' -out=tfplan` **
