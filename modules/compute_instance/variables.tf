variable "compartment_id" {}
variable "instance_shape" {}
variable "image_id" {}
variable "subnet_id" {}
variable "ssh_public_key" {}
variable "security_list_id" {}
variable "ocpus" {
  description = "The number of OCPUs for flexible shapes"
  type        = number
}

variable "memory_in_gbs" {
  description = "The amount of memory in GBs for flexible shapes"
  type        = number
}
