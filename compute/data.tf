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