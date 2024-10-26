variable "vpc_id" {
  type        = string
  description = "vpc_id"
  default     = "vpc-071a935c677dbb90c"
}

variable "instance_type" {
  type        = string
  description = "instance type"
  default     = "t3.medium"
}

variable "key_name" {
  type        = string
  description = "key name"
  default     = "tutorial-key"
}

variable "environment" {
  type        = string
  description = "environment"
  default     = "dev"
}

variable "ami" {
  type        = string
  description = "ami"
  default     = "ami-0acc77abdfc7ed5a6"
}

variable "region" {
  type        = string
  description = "region to deploy"
  default     = "eu-west-2"
}

variable "vpc_security_group_ids" {
  type        = string
  description = "sg to allow access to app"
  default     = "tooling-nexus-sg"
}


variable "vpc_security_group_lb_ids" {
  type        = string
  description = "sg to allow http"
  default     = "tooling-nexus-lb-sg"
}

variable "load_balancer" {
  type        = string
  description = "load balancer"
  default     = "tooling-nexus-lb"
}

variable "lb_type" {
  type        = string
  description = "load balancer type"
  default     = "network"
}

variable "security_group_lb" {
  type        = string
  description = "security group load balancer"
  default     = "tooling-nexus-lb-sg"
}

variable "subnet" {
  type        = list(string)
  description = "subnet ranges"
  default     = ["subnet-0ac8b28d64573460b", "subnet-08b711d075f9a142a", "subnet-0a66a5cfe19424c28"]
}

variable "availability_zones" {
  type        = list(string)
  description = "availabilty zones"
  default     = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
}

variable "zone_id" {
  type        = string
  description = "route53 zone_id"
  default     = "Z01752471FYWFTVEJ68WX"
}

variable "domain_name" {
  type        = string
  description = "domain_name"
  default     = "nexus.techrite.org"
}
