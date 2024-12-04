output "instance_ocid" {
  value = module.compute_instance.instance_ocid
}

output "instance_public_ip" {
  value = module.compute_instance.public_ip
}
output "tb_name" {
  value = module.compute_instance.display_name
}