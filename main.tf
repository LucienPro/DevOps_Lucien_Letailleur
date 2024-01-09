terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.15.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "ubuntu" {
  name = "ubuntu:latest"
}

resource "docker_container" "test" {
  image = docker_image.ubuntu.latest
  name  = "test"
}


