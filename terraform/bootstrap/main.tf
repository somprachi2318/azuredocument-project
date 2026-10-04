
resource "azurerm_resource_group" "bootstrap" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = "bootstrap"
    project     = "document-management"
    managed_by  = "terraform"
  }
}


resource "azurerm_storage_account" "tfstate" {
  name                     = "sttfstatecin001"
  resource_group_name      = azurerm_resource_group.bootstrap.name
  location                 = azurerm_resource_group.bootstrap.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"

  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false
  shared_access_key_enabled      = false

  tags = {
    environment = "bootstrap"
    project     = "document-management"
    managed_by  = "terraform"
  }
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.tfstate.id
  container_access_type = "private"
}
