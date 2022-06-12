variable "vsphere_server" {
  description = "vsphere_server"
  type        = string
}
variable "vsphere_user" {
  description = "vsphere_user"
  type        = string
}
variable "vsphere_password" {
  description = "vsphere_password"
  type        = string
  default     = ""
}
variable "vsphere_dc" {
  description = "VMware Datacenter"
  type        = string
}

variable "ansible_vault_pw" {
  description = "This is for ANSIBLE_VAULT_PASSWORD"
  type = string
}