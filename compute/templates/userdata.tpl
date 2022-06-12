#cloud-config
bootcmd:
- ifdown ens192
- ifup ens192
packages:
- jq
- acpid
- curl
- wget
- bind-utils
ssh_authorized_keys:
  - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDY/e1KJUiwOWUNr9RJb7DrUJqEH/8z1bvAW1XvzkNem697mDuqaZTq9D6TbVQf/NLJjSWiHlw7vhyzw+xSUExC0BDwv7CzPvRzgzpvF+AGNda7FhOElUprglxFeg08urxNOtSIzzsyBQcSyay2TfGb8Bho9/w3E88HB0UoRuUbNV8l1cXMUmkfH4WJgqzhZiJyPGzxfqtQ0gxf4MvqGbehzFtTIhlwf5Mqh/UYga7UwPgj/t/q+pKXMH4wNyAAzL0qWe5WCh99aNPyXR8DFGbg93pSdIQzNHpuyI4TS9NSOGcl+WrLFYEy8UTRIr6g7oFXJKN1EXdLFlAMC9xCB/Yp
users:
- default
- gecos: marth
  groups: sudo
  name: marth
  primary_group: adm
  shell: /bin/bash
  ssh-authorized-keys:
  - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDY/e1KJUiwOWUNr9RJb7DrUJqEH/8z1bvAW1XvzkNem697mDuqaZTq9D6TbVQf/NLJjSWiHlw7vhyzw+xSUExC0BDwv7CzPvRzgzpvF+AGNda7FhOElUprglxFeg08urxNOtSIzzsyBQcSyay2TfGb8Bho9/w3E88HB0UoRuUbNV8l1cXMUmkfH4WJgqzhZiJyPGzxfqtQ0gxf4MvqGbehzFtTIhlwf5Mqh/UYga7UwPgj/t/q+pKXMH4wNyAAzL0qWe5WCh99aNPyXR8DFGbg93pSdIQzNHpuyI4TS9NSOGcl+WrLFYEy8UTRIr6g7oFXJKN1EXdLFlAMC9xCB/Yp
  sudo:
  - 'ALL=(ALL) NOPASSWD:ALL'
write_files:
- content: |
    #!/bin/bash
    cat <<EOF>/etc/resolv.conf
    nameserver 192.168.10.254
    nameserver 1.0.0.1
    EOF
    dnf install https://zfsonlinux.org/epel/zfs-release.el8_5.noarch.rpm -y
    rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-zfsonlinux
    dnf config-manager --disable zfs
    dnf config-manager --enable zfs-kmod
    dnf install zfs -y
    echo zfs >/etc/modules-load.d/zfs.conf
    modprobe zfs
    zpool create data /dev/sdb
  path: /tmp/zfs.sh
runcmd:
  - [ /bin/bash, /tmp/zfs.sh ]
  - [ /bin/bash, -c, echo "nameserver 192.168.10.254" > /etc/resolv.conf]