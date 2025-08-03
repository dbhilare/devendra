variable "rgs" {
    type = map(any)
}

resource "azurerm_resource_group" "rgs" {
    for_each = var.rgs
    name = each.value.name
    location = each.value.location
}

/*
variable "vnets" {
    type = map(any)
}

resource "azurerm_virtual_network" "vnets" {
    for_each = var.vnets
    name = each.value.name
    location = each.value.location
    #resource_group_name = azurerm_resource_group.rgs[each.value.resource_group_name].name
    resource_group_name = each.value.resource_group_name
    address_space = each.value.address_space
}

variable "subnets" {
    type = map(any)
}

resource "azurerm_subnet" "subnets" {
    for_each = var.subnets
    name = each.value.name
    #resource_group_name = azurerm_resource_group.rgs[each.value.resource_group_name].name
    #virtual_network_name = azurerm_virtual_network.vnets[each.value.virtual_network_name].name
    resource_group_name = each.value.resource_group_name
    virtual_network_name = each.value.virtual_network_name
    address_prefixes = each.value.address_prefixes
}
*/
