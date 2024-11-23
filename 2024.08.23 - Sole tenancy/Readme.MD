
# Sole tenancy

[ulr](https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes)
- Gives exclusive access to the sole-tenant node - physical Computer. 
- You can create on the sole-tenant node your VMs
- You are sure that on this sole-tenant node only your VMs will be placed (no VMs of other client)

![img](./Image/SoleTenantVsMultitenant.png)


Node & Node group 
- Node this is physical machine - to confirm
- Node affinity labels - allows how individual VMs are assigned to nodes, they are inherited from templates 
