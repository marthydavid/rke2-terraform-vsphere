dnf update -y && \
dnf install -y acpid cloud-init cloud-utils-growpart curl vim wget network-scripts iproute && \
curl -sSL https://raw.githubusercontent.com/vmware/cloud-init-vmware-guestinfo/master/install.sh | sh -
echo "NOZEROCONF=yes" >> /etc/sysconfig/network && \
systemctl enable --now acpid && \
rm -rf /root/anaconda-ks.cfg
shutdown now && history -c
#dnf install -y https://rpmfind.net/linux/centos/8-stream/AppStream/x86_64/os/Packages/cloud-init-21.1-13.el8.noarch.rpm
#dnf install -y https://rpmfind.net/linux/centos/8-stream/AppStream/x86_64/os/Packages/open-vm-tools-11.3.5-1.el8.x86_64.rpm
#vi /usr/lib/python3.6/site-packages/cloudinit/net/sysconfig.py
# KNOWN_DISTROS = ['centos', 'fedora', 'rhel', 'suse', 'ol']
#vi /usr/lib/python3.6/site-packages/cloudinit/util.py
#        if linux_dist in (
#                'alpine', 'arch', 'centos', 'debian', 'fedora', 'rhel',
#                'suse', 'ol'):