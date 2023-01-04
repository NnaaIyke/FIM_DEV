
#Resoruces to refrence the exisitng Resource Group from the Environment

data "azurerm_resource_group" "rg" {
  name = "rg-t-fim"
}

#Resources to create an Azure service Plan 
resource "azurerm_service_plan" "servplanapi" {
  name                = var.azurerm_service_plan_api
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = "P1v2"

  tags = var.azure_resource_tags
}

resource "azurerm_service_plan" "servplanmui" {
  name                = var.azurerm_service_plan_mui
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = "P1v2"

  tags = var.azure_resource_tags
}

#Resources to create a Linux Web App
resource "azurerm_linux_web_app" "webappapi" {
  name                = var.azurerm_linux_web_app_api
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  service_plan_id     = azurerm_service_plan.servplanapi.id
  
  site_config {}

  tags = var.azure_resource_tags
}

resource "azurerm_linux_web_app" "webappmui" {
  name                = var.azurerm_linux_web_app_mui
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  service_plan_id     = azurerm_service_plan.servplanmui.id
  
  site_config {}

  tags = var.azure_resource_tags
}


resource "azurerm_api_management" "apim" {
  name                = var.azurerm_api_management
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  publisher_name      = "Signature Aviation"
  publisher_email     = "olmsu1e9@BBAAviation.net"

  sku_name = "Developer_1"

  tags = var.azure_resource_tags
}