terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

variable "pet_name_length" {
  description = "The length of the random pet name"
  type        = number
  default     = 2
}

resource "random_pet" "name" {
  length    = var.pet_name_length
}

output "random_pet_name" {
  value = random_pet.name.id
}
