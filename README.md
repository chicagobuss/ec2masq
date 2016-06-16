# ec2masq
Allows you to secure a private VPC by turning off all DNS resolution

To use this service effectively, you need a minimum of two VPCs in the same region.

VPC A will be where this script runs and will have DNS resolution enabled.
VPC B is the locked-down VPC and has DNS resolution disabled.  It also needs dhcp options set to point to where you have dnsmasq running in VPC A.  You'll need the appropriate security group on VPC A to allow port 53 udp traffic through from VPC B as well to the IP(s) where you run dnsmasq.

