module "automation_account" {
  source  = "sironite/automation_account/azurerm"
  version = "X.X.X"

  automation_account_name       = "automation-account-example"
  resource_group_name           = "resource-group-example"
  location                      = "eastus"
  sku_name                      = "Basic"
  local_authentication_enabled  = false
  public_network_access_enabled = false
  identity_type                 = "SystemAssigned"
  identity_ids                  = ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-group-example/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity-example"]
}