terraform {
  backend "s3"{
    bucket                      = "terraform-state"
    key                         = "rke2-2/terraform.tfstate"
    region                      = "eu-frankfurt-1"
    endpoint                    = "https://fr8ipbv8ozqv.compat.objectstorage.eu-frankfurt-1.oraclecloud.com"
    shared_credentials_file     = "shared_credentials_file"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }

  required_providers {
    vsphere = {
      source = "hashicorp/vsphere"
    }
    null = {
      source = "hashicorp/null"
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


