provider "aws" {
  region                  = "us-east-2"
  shared_credentials_file = "C:\\Users\\RS\\Desktop\\rootkey.csv"
}

variable "initialInfo" {
  type = "string"
  default = <<EOF
      Terraform
      initiated  !!!
EOF
}

output "initDone" {
  value = var.initialInfo
}

variable "maps" {
  type = "map"
  default = {
    "useast" = "ami-1"
    "euwest" = "ami-2"
  }
}

output "mapsoutput" {
  value = var.maps["useast"]
}

variable "listkey" {
  type = "list"
  default = ["ami2", "ami3"]
}

output "listoutput" {
  value = var.listkey[1]
}

variable "boolvar" {
  default = true
}

output "booloutput" {
  value = var.boolvar
}

variable "inputVar" {
  type = "string"
}

output "outputVar" {
  sensitive = true
  value = var.inputVar
}