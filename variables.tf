variable "image" {
  description = "Docker image to use"
  type        = string
  default     = "nginx:latest"

  validation {
    condition     = length(var.image) > 0 && substr(var.image, 0, 1) != " "
    error_message = "The image variable must be a non-empty string and cannot start with a space."
  }
}

variable "memory" {
  description = "Container memory limit"
  type        = number
  default     = 512

  validation {
    condition     = var.memory > 0
    error_message = "The memory variable must be a positive number."
  }
}

variable "privileged" {
  description = "Run container in privileged mode"
  type        = bool
  default     = false
}

variable "container_count" {
  description = "Number of containers to spawn"
  type        = number
  default     = 1

  validation {
    condition     = var.container_count > 0
    error_message = "The container_count variable must be a positive number."
  }
}

variable "starting_port" {
  description = "Starting port for the containers"
  type        = number
  default     = 8000

  validation {
    condition     = var.starting_port > 0 && var.starting_port <= 65535
    error_message = "The starting_port variable must be a valid port number between 1 and 65535."
  }
}