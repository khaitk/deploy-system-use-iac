variable "app_count" {
  type    = number
  default = 1
}

variable "ip" {
  type        = string
  description = "IP"
  default     = "0.0.0.0/0"
}

variable "cpu" {
  type        = number
  description = "CPU"
  default     = 1024
}

variable "memory" {
  type        = number
  description = "MEMORY"
  default     = 2048
}

