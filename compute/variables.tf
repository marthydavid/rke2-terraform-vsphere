variable "vsphere_dc" {
  description = "VMware Datacenter"
  type        = string
}
variable "cpu" {
  description = "Guest CPU parameter"
  type        = string
  default     = "4"
}
variable "memory" {
  description = "Guest Memory parameter"
  type        = string
  default     = "10240"
}

variable "firmware" {
  description = "bios or efi"
  type        = string
  default     = "efi"
}

variable "vsphere_library_template" {
  description = "vSphere Library template name"
  type        = string
  default     = "alma-8.5-template-library"
}

variable "vsphere_local_template" {
  description = "vSphere Library template name"
  type        = string
  default     = "alma-8.5-template-hp"
}

variable "root_disk_size" {
  description = "Disk size of root"
  type        = string
  default     = "20"
}

variable "zfs_disk_size" {
  description = "Disk size of zfs"
  type        = string
  default     = "40"
}
#variable "node_name_prefix" {
#  description = "Name prefix"
#  type        = string
#}
#variable "node_name_domain" {
#  description = "Name domain"
#  type        = string
#}
#variable "node_ips"{
#  type        = map(any)
#  description = "List of IPs used for the kubernetes nodes."
#}
#

locals {
  node = {
    prefix = "rke2-ctrl"
    domain = "budapest.marthy.xyz"
    ips = [
      "192.168.10.70",
      "192.168.10.71",
      "192.168.10.72"
    ]
  }
  node_name_prefix = "rke2-ctrl"
  node_name_domain = "budapest.marthy.xyz"
  node_ips = {
    "0" = "192.168.10.70"
    "1" = "192.168.10.71"
    "2" = "192.168.10.72"
  }
}