resource "oci_core_instance" "instance" {
  compartment_id      = var.compartment_id
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[2].name
  shape               = var.instance_shape
  shape_config {
    ocpus         = var.ocpus          # Specify the number of OCPUs
    memory_in_gbs = var.memory_in_gbs   # Specify the amount of memory in GBs
  }
  create_vnic_details {
    subnet_id        = var.subnet_id
    assign_public_ip = true
    nsg_ids          = [var.security_list_id]
  }

  source_details {
    source_type = "image"
    source_id   = var.image_id
  }

  metadata = {
    ssh_authorized_keys = var.ssh_public_key
  }
}

data "oci_identity_availability_domains" "ads" {
  compartment_id = var.compartment_id
}
