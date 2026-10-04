
resource "azurerm_resource_group" "bootstrap" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = "bootstrap"
    project     = "document-management"
    managed_by  = "terraform"
  }
}
