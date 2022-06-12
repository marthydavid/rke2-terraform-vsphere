terraform {
  required_providers {
    vsphere = {
      source = "hashicorp/vsphere"
    }
    null = {
      source = "hashicorp/null"
    }
    template = {
      source = "hashicorp/template"
    }
  }
}

provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server
  allow_unverified_ssl = true
}

module "compute" {
  source = "./compute"

  vsphere_dc = var.vsphere_dc
}

module "deployment" {
  source = "./deployment"
  depends_on = [module.compute]

  ansible_vault_pw = var.ansible_vault_pw
}


