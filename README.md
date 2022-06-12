# RKE2 Cluster on VMware vSphere

The motivation of this project is to provide a simple setup to easily install a 3 node rke2 cluster.

## Architecture

Cluster infrastructure is running on 3 Oracle Linux 8 VMs and all of them are running as a Control Plane node.

These nodes have additional disk to setup ZFS Local PV from OpenEBS project.

## Prerequisites

Create an OL8 based template
Provide enough storage and resources on your vSphere cluster.

Cureently this method installs all three nodes on a single machine.

## Configuration

```bash
export vsphere_server="<vcsa address>"
export vsphere_user="<User with privileges to create VM>"
export vsphere_password="<PW>"
export vsphere_dc="Datacenter which will be used to host the machines"
export ansible_vault_pw="It could be a dummy one"


cat > .auto.tfvars <<EOF
vsphere_server = ${vsphere_server}
vsphere_user = ${vsphere_user}
vsphere_password = ${vsphere_password}
vsphere_dc = ${vsphere_dc}
ansible_vault_pw = ${ansible_vault_pw}
EOF
```

## Deployment

```bash
terraform init
terraform plan -out .tfplan
terraform apply ".tfplan"
```