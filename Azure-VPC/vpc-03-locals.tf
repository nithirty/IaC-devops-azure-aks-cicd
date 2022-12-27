#Local Values
locals{
    owners = var.business_division
    environment = var.environment
    resource_name_prefix = "${var.business_division}-${var.environment}" #Append two variable 
    common_tags = {
      owners = local.owners
      environment = local.environment
    }
}

