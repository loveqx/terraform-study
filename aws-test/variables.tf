variable "key_name" {
  description = "The secret key for ec2"
  default     = "ai-module"
}

variable "server_port" {
  description = "The http port"
  type = number
  default = 80

}

variable "ssh_port" {
  description = "The ssh port"
  type = number
  default = 22

}

