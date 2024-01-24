terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "random" {}

resource "random_pet" "name" {}

output "random_pet_name" {
  value = random_pet.name.id
}
