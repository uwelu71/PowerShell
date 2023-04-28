New-VMSwitch –SwitchName “NATSwitch” –SwitchType Internal
New-NetIPAddress –IPAddress 172.21.21.1 -PrefixLength 24 -InterfaceAlias "vEthernet (NATSwitch)"
New-NetNat –Name MyNATnetwork –InternalIPInterfaceAddressPrefix 172.21.21.0/24

### Add-NetNatStaticMapping -NatName "VMSwitchNat" -Protocol TCP -ExternalIPAddress 0.0.0.0 -InternalIPAddress 172.21.21.2 -InternalPort 80 -ExternalPort 80


New-VMSwitch –SwitchName “NATSwitch 192.168.10.0” –SwitchType Internal
New-NetIPAddress –IPAddress 1921.168.10.1 -PrefixLength 24 -InterfaceAlias "vEthernet (NATSwitch 192.168.10.0)"
New-NetNat –Name MyNATnetwork –InternalIPInterfaceAddressPrefix 192.168.10.0/24

New-VMSwitch –SwitchName “NATSwitch 192.168.50.0” –SwitchType Internal
New-NetIPAddress –IPAddress 1921.168.50.1 -PrefixLength 24 -InterfaceAlias "vEthernet (NATSwitch 192.168.50.0)"
New-NetNat –Name MyNATnetwork –InternalIPInterfaceAddressPrefix 192.168.50.0/24

New-VMSwitch –SwitchName “NATSwitch 192.168.100.0” –SwitchType Internal
New-NetIPAddress –IPAddress 1921.168.100.1 -PrefixLength 24 -InterfaceAlias "vEthernet (NATSwitch 192.168.100.0)"
New-NetNat –Name MyNATnetwork –InternalIPInterfaceAddressPrefix 192.168.100.0/24