variable "own_ssh_key" {
  description = "SSH Public key."
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAn3ENhh1aS0kZmj6IkTH8QgQ9OxLHsew2Rwhpzo+4bivF0LDmdkAtJV0b/LcgO+YPUmCvUDur1V8d4cnsD9FVTzXGYlQlI/85QtMHgRr+hRRG5huQKk58LdNqwZcD5RT9/NEA1l4z31lb/YwwRUFilYT6WfY3HHsrG09TkAPUi2++afFfhQNlrzUjA3Q4Eaz8GmEDqVJqM4XgKIHqKS2eIaoC2HCWys97QLmNerOcAb7i2vymvv1dNvlJJjjLhHVBV3m8/v5XeR0sfksOGxvDeHh+/AzqFYEcFtt157z8Sg6J7wYyvwAD37wP1n2F1n7HZvnFnwNvmrAGWujCsCTB4w== david@rakis"
}

variable "security_group_name" {
  description = "The name of my security group"
  type        = string
  default     = "terraform-my-instance"
}
