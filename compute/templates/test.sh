history -w
shutdown -c
shutdow now && history -c
shutdown now && history -c
shutdown now && history -c
cat /etc/passwd
ip a
cloud-init collect-logs
tar -xvzf cloud-init.tar.gz
less cloud-init-logs-2022-02-14/run/cloud-init/ds-identify.log
vmware-rpctool info-get
vmware-rpctool
vmware-rpctool --help
vmware-rpctool "info-get guestinfo.metadata"
vmware-rpctool "info-get guestinfo.metadata"|base64 -d
vmware-rpctool "info-get guestinfo.userdata"|base64 -d
vmware-rpctool "info-get guestinfo.userdata"|base64 -d|yq
dnf install -y yq
vi /etc/cloud/cloud.cfg
cloud-init ini
cloud-init init
vmware-rpctool "info-get guestinfo.userdata"|base64 -d|yq
vmware-rpctool "info-get guestinfo.userdata"|base64 -d
cloud-init init
vi /etc/cloud/cloud.cfg
cloud-init init
cloud-init clean
cloud-init init
vmware-rpctool "info-get guestinfo.userdata"|base64 -d
vi /etc/cloud/cloud.cfg
cat /etc/passwd
cat /home/cloud-user/.ssh/authorized_keys
cloud-init clean
cloud-init init
cloud-init init --help
cloud-init init -l
cloud-init init
cat /etc/sysconfig/network-scripts/ifcfg-ens192
vmware-rpctool "info-get guestinfo.metadata"|base64 -d
groups
cat /etc/group
dnf install -y https://rpmfind.net/linux/centos/8-stream/AppStream/x86_64/os/Packages/cloud-init-21.1-13.el8.noarch.rpm
cloud-init clean
cloud-init ini
cloud-init init
dnf install -y cat /etc/passwd
cat /etc/passwd
cloud-init init
cloud-init clean
vmware-rpctool "info-get guestinfo.metadata"|base64 -d
rpm -qa|grep -i networkmanager
dnf install -y network-scripts
cloud-init clean
cloud-init init
dnf install ifupdown2
dnf search ifupdown
dnf search if
dnf install -y iproute
cat /usr/lib/python3.6/site-packages/cloudinit/net/sysconfig.py | grep KNOWN_DISTROS
rpm -qa grep cloud-init
dnf remove -y cloud-init
dnf install cloud-init
cat /usr/lib/python3.6/site-packages/cloudinit/net/sysconfig.py | grep KNOWN_DISTROS
curl -sSL https://raw.githubusercontent.com/vmware/cloud-init-vmware-guestinfo/master/install.sh | sudo sh - &>/dev/null
cloud-init module --mode config
cloud-init modules --mode config
cloud-init init
cloud-init clean
cloud-init init
cloud-init modules -l
cloud-init modules
cloud-init modules --help
cloud-init modules --mode init
cloud-init modules --mode config
cloud-init modules --mode final
cloud-init clean --logs --seed
cloud-init init
cat /etc/passwd
curl -sSL https://raw.githubusercontent.com/vmware/cloud-init-vmware-guestinfo/master/install.sh | sh -
cloud-init init
less /run/cloud-init/ds-identify.log
dnf install -y
dnf install -y https://rpmfind.net/linux/fedora/linux/development/rawhide/Everything/x86_64/os/Packages/c/cloud-init-21.3-5.fc36.noarch.rpm
dnf install -y https://rpmfind.net/linux/openmandriva/4.3/repository/x86_64/main/release/cloud-init-21.4-9-omv4050.x86_64.rpm
dnf install -y https://rpmfind.net/linux/openmandriva/4.3/repository/x86_64/main/release/cloud-init-21.4-9-omv4050.x86_64.rpm --nobest
dnf install -y https://rpmfind.net/linux/openmandriva/4.3/repository/x86_64/main/release/cloud-init-21.4-9-omv4050.x86_64.rpm --skip-broken
rpm -qa|grep cloud-init
dnf install -y https://rpmfind.net/linux/centos/8-stream/AppStream/x86_64/os/Packages/open-vm-tools-11.3.5-1.el8.x86_64.rpm
dnf install -y https://rpmfind.net/linux/centos/8-stream/AppStream/x86_64/os/Packages/cloud-init-21.1-13.el8.noarch.rpm
cat /usr/lib/python3.6/site-packages/cloudinit/net/sysconfig.py | grep KNOWN_DISTROS
cloud-init clean --logs --seed
cloud-init init
less /run/cloud-init/ds-identify.log
curl -sSL https://raw.githubusercontent.com/vmware/cloud-init-vmware-guestinfo/master/install.sh | sh -
cloud-init clean --logs --seed
cloud-init init
cat /usr/lib/python3.6/site-packages/cloudinit/net/sysconfig.py | grep KNOWN_DISTROS
vi /usr/lib/python3.6/site-packages/cloudinit/net/sysconfig.py
cloud-init clean --logs --seed
cloud-init init
dnf remove -y cloud-init
dnf install cloud-init -y
curl -sSL https://raw.githubusercontent.com/vmware/cloud-init-vmware-guestinfo/master/install.sh | sh -
cloud-init clean --logs --seed
cloud-init init
less /run/cloud-init/ds-identify.log
find / -name DataSourceVMwareGuestInfo.py
ll /etc/cloud/cloud.cfg.d/99-DataSourceVMwareGuestInfo.cfg
cat /etc/cloud/cloud.cfg.d/99-DataSourceVMwareGuestInfo.cfg
vi /etc/cloud/cloud.cfg
cat /etc/cloud/cloud.cfg.d/99-DataSourceVMwareGuestInfo.cfg
vi /etc/cloud/cloud.cfg
cloud-init clean --logs --seed
vi /etc/cloud/cloud.cfg
cloud-init init
less /run/cloud-init/ds-identify.log
/usr/bin/dscheck_VMwareGuestInfo
echo $?
less /usr/bin/dscheck_VMwareGuestInfo
PYTHONPATH="$(pwd)"
find / -name DataSourceVMwareGuestInfo.py
python3 /usr/lib/python3.6/site-packages/cloudinit/sources/DataSourceVMwareGuestInfo.py
vmware-rpctool "info-get guestinfo.metadata"|base64 -d
cloud-init clean
cat /run/cloud-init/ds-identify.log
rpm -qa|grep vmware
rpm -qa|grep cloud-init
vi /etc/ssh/sshd_config
systemctl restart sshd
ip -4 a
less /run/cloud-init/ds-identify.log
less /var/log/cloud-init.log
hostname -f
ip -4 a
ifdown ens192
ifup ens192
ip -4 a
vi /etc/sysconfig/network-scripts/ifcfg-ens192
cat /etc/passwd
cat /home/cloud-user/.ssh/authorized_keys
cloud-init clean
cloud-init clean --logs --seed
cloud-init init
vmware-rpctool "info-get guestinfo.userdata"|base64 -d
vmware-rpctool "info-get guestinfo.metadata"|base64 -d
less /run/cloud-init/status.json
su - marth
ll /etc/marth
cloud-init clean
ip -4 a
cat /etc/sysconfig/network-scripts/ifcfg-ens192
history
cat anaconda-ks.cfg
yq
jq
wget
curl
curl telnet://marthy.xyz:443
cat /etc/resolv.conf
hostname -f
cloud-init clean
id marth
cat /home/marth/.ssh/authorized_keys
cat /etc/resolv.conf
ping telex.hu
cloud-init ini
cloud-init init
cat /etc/resolv.conf
vi /etc/sysconfig/network-scripts/ifcfg-ens192
cloud-init clean
vmware-rpctool "info-get guestinfo.metadata"|base64 -d
