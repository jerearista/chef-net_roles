#
# Cookbook Name:: net_roles
# Recipe:: veos_config
#
# Copyright (c) 2016 Arista Networks, All Rights Reserved.
eos_switchconfig 'running-config' do
  action :create
  source 'veos_running_config.erb'
  variables({
    hostname: 'veos02',
    domainname: 'example.com',
    nameservers: ['10.0.2.3'],
    ntp_server: '10.0.2.3',
    ntp_source_intf: 'Management1',
    static_routes: {
      '0.0.0.0/0' => '10.0.2.2'
    },
    l3ports: [
      Ethernet1: {
        ip_addr: '192.168.8.3/24'
      }
    ],
    l2ports: [
      Ethernet2: {},
      Ethernet3: {},
      Ethernet4: {}
    ]
            })
end
