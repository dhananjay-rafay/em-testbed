output "instance_ocid" {
  value = oci_core_instance.instance.id
}

output "public_ip" {
  value = oci_core_instance.instance.public_ip
}

output "display_name" {
  value = oci_core_instance.instance.display_name
}