instance-id: ${instance_name}
local-hostname: ${instance_name}
network:
  version: 1
  config:
    - type: physical
      name: ens192
      subnets:
        - type: static
          address: ${ip_addr}
          gateway: ${def_gw}
          dns_nameservers:
            - 1.0.0.2
            - 1.1.1.2