# Logic App - DEMO 01

## Goal

The purpose of this DEMO is to show simple logic apps, which are responsible for simple JSON mappings using Liquid framework. 

---

## Instruction

### 01-IaaC

Pre-requisites:
1. Make sure you are logged in to Azure. Use `az login` command.
1. Make sure you have terraform installed.
1. Please also make sure, that have you created storage account for terraform state files. It should be configured in `main` > `provider.tf` file. 
1. Create your own environment file or update an existing one `environments` > `demo.tf` based on your target environment. 

Steps:
1. Go to "main" folder using console
1. `terraform init` - To initalize terraform
1. `terraform fmt` -  (Optional) To format file
1. `terraform validate` - (Optional) To validate code
1. `terraform plan -var-file='../environments/demo.tfvars' -out=tfplan` - To compare the differences between code and target environemnt.
1. `terraform apply tfplan` - To apply changes, once you reviewed the plan. 

### 02-Run Logic App

Pre-requisites:
1. Make sure you are logged in to Azure. Use `az login` command.
1. Make sure you have installed required extensions for Logic Apps development
   1. Azure Logic Apps (Standard)
   1. Azure Logic Apps (Consumption)
   1. Azure Functions
   1. Azure Developer CLI
   1. Azurite
   1. REST Client (For request testing)
   1. K6 (For performance testing)
1. Open new VS Code window, navigate to some TMP folder, where you would like to run the simulator and run "Azurite Table Service", "Azurite Queue Service" and "Azureite Blob Service"
   1. From extension - You will see dedicated buttons on the bottom blue bar in VS Code. You have to just click on them and service will be created automatically. 
   1. From command line: https://learn.microsoft.com/en-us/azure/storage/common/storage-use-azurite?tabs=visual-studio

Steps:
1. Open Logic App directory in separate Visual Studio Code window (e.g. 02-Workflows/demo-01-simple-standard). The Logic App Extension do not support multiple Logic Apps opened at the same time.
1. To run the Logic App service select `Run` >  `Start Debugging` from menu or press `F5` button. 
1. As a result in the console you will see workflows list with urls. 

### 03-Testing

Requests:
1. Go to folder `testing` > `requests`
1. You will find there few sample requests. Make sure that host and signature are are the same as per your environemnt. To verify it, go to specyfic workflow folder, right click on `workflow.json` file and select `Overview` option. As a result you will see the page with all informations about Logic App as well as `Callback URL` which indludes host and signature. 
1. To make a request click on `Send Request` button on top of the URL
   1. NOTE: You have to install `REST Client` extension. 
   1. NOTE: You can also use other REST client e.b. Postman. 

Performance:
1. Go to folder `testing` > `performance`
2. Run k6 with parameters as per your requirements e.g. `k6 run --vus 10 --duration 30s workflow001.js`

---

## References
1. [Quickstart: Create and manage logic app workflow definitions with multi-tenant Azure Logic Apps and Visual Studio Code](!https://learn.microsoft.com/en-us/azure/logic-apps/quickstart-create-logic-apps-visual-studio-code)
  