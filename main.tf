variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of an existing EC2 KeyPair to enable SSH access to the instance"
  type        = string
}

variable "subnet_id" {
  description = "The id of the subnet in which to launch the instance"
  type        = string
}

variable "security_group_id" {
  description = "Security group to associate with the EC2 instance."
  type        = string
}

resource "aws_instance" "example" {
  instance_type          = var.instance_type
  key_name               = var.key_name
  ami                    = "ami-0abcdef1234567890" # Replace with a valid AMI ID for your region
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = "My EC2 Instance"
  }
}

output "instance_id" {
  description = "Instance ID of the newly created EC2 instance"
  value       = aws_instance.example.id
}

output "public_ip" {
  description = "Public IP address of the newly created EC2 instance"
  value       = aws_instance.example.public_ip
}
