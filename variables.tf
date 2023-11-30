variable "instance_name" {
  description = "value of the name tag for the ec2 instance"
  type        = string
  default     = "ExampleAPPServerInstance"
}
variable "tags" {
  description = "Tags del proyecto"
  type        = map(string)
}

variable "access_key" {

}
variable "secret_key" {

}