variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project = "roboshop"
    #Component = "Firewalls"
    Environment = "DEV"
    Terraform = "true"
  }
}