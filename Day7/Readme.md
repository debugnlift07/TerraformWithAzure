Createing vnet in azure,

```mermaid
graph TD
  RG[Resource Group: terraform-rg]

  VNET[Virtual Network: terraform-network]

  SUB1[Subnet1: 10.0.1.0/24]
  SUB2[Subnet2: 10.0.2.0/24]

  NSG[Network Security Group: terraform-security-group]

  RG --> VNET
  VNET --> SUB1
  VNET --> SUB2
  SUB2 --> NSG
