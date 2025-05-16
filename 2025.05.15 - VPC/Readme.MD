
### VPC Networking Fundamentals
[course](https://www.cloudskillsboost.google/focuses/1221?catalog_rank=%7B%22rank%22%3A3%2C%22num_filters%22%3A0%2C%22has_search%22%3Atrue%7D&parent=catalog&search_id=45730962)
- Each Google Cloud project has a default network with subnets, routes, and firewall rules. 
- **Routes** tell VM instances and the VPC network how to send traffic from an instance to a destination, either inside the network or outside of Google Cloud.
    - you can create a route that sends all outbound traffic to an instance configured as a NAT gateway
- By default **Firewall** has two rules that block all incoming connections and allow all outgoing connections.
  - **VPC firewall rules** are under **Firewall policies**


ICMP - The Internet Control Message Protocol (ICMP) is a supporting protocol[2] in the Internet protocol suite. It is used by network devices, including routers, to send error messages and operational information indicating success or failure when communicating with another IP address. 