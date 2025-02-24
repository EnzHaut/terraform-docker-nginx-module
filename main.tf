terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_container" "nginx" {
  count = var.container_count

  image = var.image
  name  = "nginx_container_${count.index}"

  memory = var.memory
  privileged = var.privileged

  ports {
    internal = 80
    external = var.starting_port + count.index
  }
}