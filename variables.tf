
variable "azurerm_service_plan_api" {
  type    = string
  default = "asp-t-l-fimapi"
}

variable "azurerm_service_plan_mui" {
  type    = string
  default = "asp-t-l-fimui"
}

variable "azurerm_linux_web_app_api" {
  type    = string
  default = "app-t-l-fimapi"
}

variable "azurerm_linux_web_app_mui" {
  type    = string
  default = "app-t-l-fimui"
}

variable "azure_resource_tags" {
  type        = map(any)
  description = "Map of tags that will be applied to all resources created"
  default     = {
    Application = "FIM", 
    Company     = "Signature Aviation", 
    Environment = "Test"
  }
}

variable "azurerm_api_management" {
  type    = string
  default = "apim-t-l-fim"
}