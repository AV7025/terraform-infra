
variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

variable "resource_group_name" {
  default = "jenkins-iac-rg"
}

variable "location" {
  default = "canadacentral"
}

variable "app_service_plan_name" {
  default = "jenkins-app-plan"
}

variable "app_name" {
  default = "jenkins-web-app"
}
