#Environment Variable
variable "environment" {
    description = "Environment Variable used as prefix"
    default = "dev"
    type = string  
}

# Divison
variable "business_division" {
   description = "Infrastructure"
   type = string
   default = "Azure Devops"
}

# Azure Resouce Group

variable "resource_group_name" {
  description = "Resource Group Name"
  type = string
  default = "rg-default"  
}

# Azure Resouce Location

variable "resource_group_location" {
  description = "Region in which Azure Resources to be created"
  type = string
  default = "eastus2"  
}
