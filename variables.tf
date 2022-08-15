variable "vpc_name" {
  description = "This is the VPC name"
  type        = string
}

variable "aws_region" {
  description = "The region to deploy the resources"
  type = string
}
variable "az_a" {
  description = "The AZ to deploy the resources"
  type = string
}
variable "az_b" {
  description = "The AZ to deploy the resources"
  type = string
}
variable "az_c" {
  description = "The AZ to deploy the resources"
  type = string
}

variable "cidr_vpc" {
  description = "This is the CIDR of the VPC"
}

variable "cidr_kibana_public" {
  description = "This is the CIDR of the Kibana Public Subnet"
}

variable "cidr_monitor_private" {
  description = "This is the CIDR of the Monitoring Subnet Private"
}

variable "cidr_app_private_a" {
  description = "This is the CIDR of the Application Subnet Private-a"
}
variable "cidr_app_private_b" {
  description = "This is the CIDR of the Application Subnet Private-b"
}
variable "cidr_app_private_c" {
  description = "This is the CIDR of the Application Subnet Private-c"
}