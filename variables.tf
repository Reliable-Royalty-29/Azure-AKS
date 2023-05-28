variable "resource_group_name" {
  type        = string
  description = "aks-rg"
}
variable "location" {
  type        = string
  description = "CentralUS"
}
variable "cluster_name" {
  type        = string
  description = "shiva"
}
variable "kubernetes_version" {
  type        = string
  description = "1.26"
}
variable "system_node_count" {
  type        = number
  description = "2"
}
variable "acr_name" {
  type        = string
  description = "deva"
}
