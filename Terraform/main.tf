terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.15.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "my_image" {
  name         = "registry.gitlab.com/lucien7312502/devops/devops:latest"
  keep_locally = false
}

resource "docker_container" "my_container" {
  image = docker_image.my_image.latest
  name  = "mon_app"
  ports {
    internal = 80
    external = 8000
  }
}

