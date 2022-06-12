data "vsphere_datacenter" "dc" {
  name = var.vsphere_dc
}

data "vsphere_datastore" "datastore1" {
  name          = "HP-500GSSD-NVME"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_resource_pool" "pool" {
  name          = "MGMT/Resources"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = "DPortGroup-MGMT"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_content_library" "content_library" {
  name = "TestContentLib"
}

data "vsphere_content_library_item" "library-template" {
  name        = var.vsphere_library_template
  library_id  = data.vsphere_content_library.content_library.id
  type        = "OVF"
}
data "vsphere_virtual_machine" "local-template" {
  name          = var.vsphere_local_template
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "template_file" "cloud_init_template" {
  template = "${file("${path.module}/templates/userdata.tpl")}"
}

data "template_file" "metadata1" {
  template = "${file("${path.module}/templates/metadata.tpl")}"

  vars =  {
        instance_name = "${local.node.prefix}01.${local.node.domain}"
        ip_addr = "${local.node.ips[0]}/24"
        def_gw = "192.168.10.254"
  }
}
data "template_file" "metadata2" {
  template = "${file("${path.module}/templates/metadata.tpl")}"

  vars =  {
        instance_name = "${local.node.prefix}02.${local.node.domain}"
        ip_addr = "${local.node.ips[1]}/24"
        def_gw = "192.168.10.254"
  }
}
data "template_file" "metadata3" {
  template = "${file("${path.module}/templates/metadata.tpl")}"

  vars =  {
        instance_name = "${local.node.prefix}03.${local.node.domain}"
        ip_addr = "${local.node.ips[2]}/24"
        def_gw = "192.168.10.254"

  }
}

data "template_file" "metadata4" {
  template = "${file("${path.module}/templates/metadata.tpl")}"

  vars =  {
        instance_name = "lxc.budapest.marthy.xyz"
        ip_addr = "192.168.10.73/24"
        def_gw = "192.168.10.254"

  }
}
