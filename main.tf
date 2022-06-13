terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.2.3"
    }
  }
}

provider "local" {
  # Configuration options
}

resource "random_password" "password" {
  length = 8
  min_lower = 1
  min_upper = 1
  override_special = "!#$%&*()-_=+[]{}<>:?"
  min_special = 1
  
}

output "password" {
  value="Hi ${var.name} your password is ${random_password.password.result}"
  sensitive=true
}