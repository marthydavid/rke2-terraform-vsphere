resource "vsphere_folder" "folder" {
  path          = "terraform-rke2"
  type          = "vm"
  datacenter_id = data.vsphere_datacenter.dc.id
}

resource "vsphere_virtual_machine" "vm1" {
  name             = "rke2-ctrl01"
  folder           = resource.vsphere_folder.folder.path
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore1.id

  num_cpus = var.cpu
  memory   = var.memory

  enable_disk_uuid = "true"

  firmware = var.firmware
  guest_id = "rhel8_64Guest"

  network_interface {
    network_id = data.vsphere_network.network.id

  }
  wait_for_guest_net_timeout = 0

  disk {
    label            = "disk0"
    unit_number      = 0
    size             = var.root_disk_size
    thin_provisioned = true
  }
  disk {
    label            = "disk1"
    unit_number      = 1
    size             = var.zfs_disk_size
  }
  clone {
    #template_uuid = data.vsphere_content_library_item.library-template.id
    template_uuid = data.vsphere_virtual_machine.local-template.id
  }
  extra_config = {
    "guestinfo.userdata"          = "${base64encode(data.template_file.cloud_init_template.rendered)}"
    "guestinfo.userdata.encoding" = "base64"
    "guestinfo.metadata"          = "${base64encode(data.template_file.metadata1.rendered)}"
    "guestinfo.metadata.encoding" = "base64"
  }
}

resource "vsphere_virtual_machine" "vm2" {
  name             = "rke2-ctrl02"
  folder           = resource.vsphere_folder.folder.path
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore1.id

  num_cpus = var.cpu
  memory   = var.memory

  enable_disk_uuid = "true"

  firmware = var.firmware
  guest_id = "rhel8_64Guest"

  network_interface {
    network_id = data.vsphere_network.network.id

  }
  wait_for_guest_net_timeout = 0

  disk {
    label            = "disk0"
    unit_number      = 0
    size             = var.root_disk_size
    thin_provisioned = true
  }
  disk {
    label            = "disk1"
    unit_number      = 1
    size             = var.zfs_disk_size
  }
  clone {
    #template_uuid = data.vsphere_content_library_item.library-template.id
    template_uuid = data.vsphere_virtual_machine.local-template.id
  }
  extra_config = {
    "guestinfo.userdata"          = "${base64encode(data.template_file.cloud_init_template.rendered)}"
    "guestinfo.userdata.encoding" = "base64"
    "guestinfo.metadata"          = "${base64encode(data.template_file.metadata2.rendered)}"
    "guestinfo.metadata.encoding" = "base64"
  }
}

resource "vsphere_virtual_machine" "vm3" {
  name             = "rke2-ctrl03"
  folder           = resource.vsphere_folder.folder.path
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore1.id

  num_cpus = var.cpu
  memory   = var.memory

  enable_disk_uuid = "true"

  firmware = var.firmware
  guest_id = "rhel8_64Guest"

  network_interface {
    network_id = data.vsphere_network.network.id

  }
  wait_for_guest_net_timeout = 0

  disk {
    label            = "disk0"
    unit_number      = 0
    size             = var.root_disk_size
    thin_provisioned = true
  }
  disk {
    label            = "disk1"
    unit_number      = 1
    size             = var.zfs_disk_size
  }
  clone {
    #template_uuid = data.vsphere_content_library_item.library-template.id
    template_uuid = data.vsphere_virtual_machine.local-template.id
  }


  extra_config = {
    "guestinfo.userdata"          = "${base64encode(data.template_file.cloud_init_template.rendered)}"
    "guestinfo.userdata.encoding" = "base64"
    "guestinfo.metadata"          = "${base64encode(data.template_file.metadata3.rendered)}"
    "guestinfo.metadata.encoding" = "base64"
  }
}
resource "vsphere_virtual_machine" "vm4" {
  name             = "lxd"
  folder           = resource.vsphere_folder.folder.path
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore1.id

  num_cpus = var.cpu
  memory   = var.memory

  enable_disk_uuid = "true"

  firmware = var.firmware
  guest_id = "rhel8_64Guest"

  network_interface {
    network_id = data.vsphere_network.network.id

  }
  wait_for_guest_net_timeout = 0

  disk {
    label            = "disk0"
    unit_number      = 0
    size             = var.root_disk_size
    thin_provisioned = true
  }
  disk {
    label            = "disk1"
    unit_number      = 1
    size             = var.zfs_disk_size
  }
  clone {
    #template_uuid = data.vsphere_content_library_item.library-template.id
    template_uuid = data.vsphere_virtual_machine.local-template.id
  }


  extra_config = {
    "guestinfo.userdata"          = "${base64encode(data.template_file.cloud_init_template.rendered)}"
    "guestinfo.userdata.encoding" = "base64"
    "guestinfo.metadata"          = "${base64encode(data.template_file.metadata4.rendered)}"
    "guestinfo.metadata.encoding" = "base64"
  }
}
