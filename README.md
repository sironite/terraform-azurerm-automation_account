<!-- BEGIN_TF_DOCS -->
 ## Automation Account
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-automation_account/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/automation_account)

# Usage - Module

## Automation Account

```hcl
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
```
## Providers

| Name | Version |
|------|---------|
| azurerm | >=2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_automation_account.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/automation_account) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| automation\_account\_name | The name of the Azure Automation Account. | `string` | yes |
| location | The location in which to create the Azure Automation Account. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the Azure Automation Account. | `string` | yes |
| identity\_ids | The list of identity IDs to assign to the Azure Automation Account. | `list(string)` | no |
| identity\_type | The type of identity to assign to the Azure Automation Account. | `string` | no |
| local\_authentication\_enabled | Whether or not local authentication is enabled for the Azure Automation Account. | `bool` | no |
| public\_network\_access\_enabled | Whether or not public network access is enabled for the Azure Automation Account. | `bool` | no |
| sku\_name | The SKU name of the Azure Automation Account. | `string` | no |
| tags | A map of tags to assign to the Azure Automation Account. | `map(string)` | no |

## Outputs

| Name | Description |
|------|-------------|
| automation\_account\_id | n/a |
| automation\_account\_name | n/a |

## Related documentation
<!-- END_TF_DOCS -->