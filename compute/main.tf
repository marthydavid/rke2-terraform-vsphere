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
    "guestinfo.userdata"          = "${base64encode(templatefile("${path.module}/templates/userdata.tpl",{}))}"
    "guestinfo.userdata.encoding" = "base64"
    "guestinfo.metadata"          = "${base64encode(templatefile("${path.module}/templates/metadata.tpl",
                                      {
                                            instance_name = "${local.node.prefix}01.${local.node.domain}"
                                            ip_addr = "${local.node.ips[0]}/24"
                                            def_gw = "192.168.10.254"
                                      }
    ))}"
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
        "guestinfo.userdata"          = "${base64encode(templatefile("${path.module}/templates/userdata.tpl",{}))}"
    "guestinfo.userdata.encoding" = "base64"
    "guestinfo.metadata"          = "${base64encode(templatefile("${path.module}/templates/metadata.tpl",
                                      {
                                            instance_name = "${local.node.prefix}02.${local.node.domain}"
                                            ip_addr = "${local.node.ips[1]}/24"
                                            def_gw = "192.168.10.254"
                                      }
    ))}"
    "guestinfo.metadata.encoding" = "base64"
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
    "guestinfo.userdata"          = "${base64encode(templatefile("${path.module}/templates/userdata.tpl",{}))}"
    "guestinfo.userdata.encoding" = "base64"
    "guestinfo.metadata"          = "${base64encode(templatefile("${path.module}/templates/metadata.tpl",
                                      {
                                            instance_name = "${local.node.prefix}03.${local.node.domain}"
                                            ip_addr = "${local.node.ips[2]}/24"
                                            def_gw = "192.168.10.254"
                                      }
    ))}"
    "guestinfo.metadata.encoding" = "base64"
  }
}