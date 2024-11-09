variable "region" {}
variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}

variable "compartment_id" {}
variable "instance_shape" {}
variable "image_id" {}
variable "ssh_public_key" {}
variable "existing_subnet_id" {}
variable "existing_security_list_id" {}
variable "ocpus" {
  description = "The number of OCPUs for flexible shapes"
  type        = number
}

variable "memory_in_gbs" {
  description = "The amount of memory in GBs for flexible shapes"
  type        = number
}
