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

variable "custon_port" {

   description = "The game port"
  type = number
  default = 6629
}


variable "alb_name" {
  description = "The name of the ALB"
  type        = string
  default     = "terraform-asg-example"
}

variable "instance_security_group_name" {
  description = "The name of the security group for the EC2 Instances"
  type        = string
  default     = "terraform-example-instance"
}

variable "alb_security_group_name" {
  description = "The name of the security group for the ALB"
  type        = string
  default     = "terraform-example-alb"
}
