variable "image" {
  description = "Docker image to use"
  type        = string
  default     = "nginx:latest"
}

variable "memory" {
  description = "Container memory limit"
  type        = number
  default     = 512
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
}

variable "starting_port" {
  description = "Starting port for the containers"
  type        = number
  default     = 8000
}