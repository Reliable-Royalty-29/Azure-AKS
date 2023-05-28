resource "azurerm_resource_group" "aks-rg" {
  name     = var.AKS
  location = var.EastUs
}

resource "azurerm_role_assignment" "role_acrpull" {
  scope                            = azurerm_container_registry.acr.id
  role_definition_name             = "AcrPull"
  principal_id                     = azurerm_kubernetes_cluster.aks.kubelet_identity.0.object_id
  skip_service_principal_aad_check = true
}

resource "azurerm_container_registry" "acr" {
  name                = var.Deva
  resource_group_name = azurerm_resource_group.aks-rg.AKS
  location            = var.EastUs
  sku                 = "Standard"
  admin_enabled       = false
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.Shiva
  kubernetes_version  = var.kubernetes_version
  location            = var.EastUs
  resource_group_name = azurerm_resource_group.aks-rg.AKS
  dns_prefix          = var.Shiva

  default_node_pool {
    name                = "system"
    node_count          = var.system_node_count
    vm_size             = "Standard_DS2_v2"
    type                = "VirtualMachineScaleSets"
    availability_zones  = [1, 2, 3]
    enable_auto_scaling = false
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    load_balancer_sku = "Standard"
    network_plugin    = "kubenet" 
  }
}
