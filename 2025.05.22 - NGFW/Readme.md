# NGFW

For each VPC we can define the firewall rules. We can open ports for the Ingress and Egress traffic. The most common rule is to allow computers to connect to VM through SSH.

![vpcfirewall](2025.05.22 - NGFW/Images/VPCFirewall.png)

VPC firewall rules
- Apply to all instances withing the VPC
- L3/L4 filtering (IP addreses, protocols, protts)

NGFW
- policies apply to regional or global networks
- polilces are hierarchical (organization, folder, projects)
- L7 filtering
- Filtering based on URL, geolocation

Service tiers
In the enterprise version NGFW has:
- Intrusion prevention service
- TLS decryption

![vpcfirewall](2025.05.22 - NGFW/Images/NGFWServiceTiers.png)


Glossary:
- Address group - allows to group IPs or CIDR into one group (for example 'web-servers')
- Tags - The is an key-value object.

## Tutorial > Secure VPC Networks wit Cloud Next Generation Firewall

Enable Network security API
```
gcloud services enable networksecurity.googleapis.com
```

