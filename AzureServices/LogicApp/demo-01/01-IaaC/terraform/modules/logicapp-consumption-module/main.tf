# Create Logic App - Consumption Plan
resource "azurerm_logic_app_workflow" "logic_app" {
  
  location                        = var.location
  resource_group_name             = var.resource_group_name
  tags = var.tags

  name                            = var.logic_app_name
}

output "id" {
  value = azurerm_logic_app_workflow.logic_app.id
}
