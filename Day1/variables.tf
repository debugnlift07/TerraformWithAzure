# variables.tf

variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {
  sensitive = true
}
variable "tenant_id" {}
variable "location" {
  default = "SouthIndia"
}
variable "resource_group_name" {
  default = "rg-demo-terraform-by-naveen"
}
