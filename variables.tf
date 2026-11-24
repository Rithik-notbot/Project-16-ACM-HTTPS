variable "vpc_id" {
  description = "ID of the company-approved existing VPC"
  type        = string
}

variable "public_subnet_ids" {
  description = "Two approved public subnet IDs in different Availability Zones"
  type        = list(string)

  validation {
    condition     = length(var.public_subnet_ids) == 2
    error_message = "Provide exactly two public subnet IDs."
  }
}

variable "certificate_arn" {
  description = "ARN of the approved ACM certificate in ap-south-1"
  type        = string
}

variable "target_instance_ids" {
  description = "IDs of approved EC2 backend instances"
  type        = list(string)
}