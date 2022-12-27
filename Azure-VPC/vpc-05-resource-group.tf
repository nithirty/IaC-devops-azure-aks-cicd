
resource "azurerm_resource_group" "rg" {#
    #name =  "${local.resource_name_prefix}-${var.resource_group_name}"
    # For Repeated Demos add ${random_string.random.id} to generate unique group name each time 
    name = "${local.resource_name_prefix}-${var.resource_group_name}-${random_string.generate_random.id}"
    location = var.resource_group_location
    tags = local.common_tags
}