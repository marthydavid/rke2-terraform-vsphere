resource "null_resource" "rke2_ansible" {
  provisioner "local-exec" {
    command = "git clone git@github.com:marthydavid/rke2-ansible.git -b marthyd"

  }
}
resource "null_resource" "rke2_deployment" {
  depends_on = [
    null_resource.rke2_ansible
  ]
  provisioner "local-exec" {
    command = "ansible-playbook site.yml"
    working_dir = "rke2-ansible"
    environment = {
      ANSIBLE_HOST_KEY_CHECKING = "FALSE"
      ANSIBLE_VAULT_PASSWORD = "${var.ansible_vault_pw}"
    }
  }
}