module "compute_instance" {
  source              = "./modules/compute_instance"
  compartment_id      = var.compartment_id
  instance_shape      = var.instance_shape
  image_id            = var.image_id
  subnet_id           = var.tb_public_subnet_id
  ssh_public_key      = var.ssh_public_key
  security_list_id    = var.tb_security_id
  ocpus               = var.ocpus
  memory_in_gbs       = var.memory_in_gbs
  tb_name             = var.tb_name
}
