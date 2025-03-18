@description('Name of the Virtual Network')
param vnetName string = 'myVnet'

@description('Name of the Subnet')
@allowed([
  'mySubnet'
  'anotherSubnet'
])
param subnetName string = 'mySubnet'

@description('Address space for the Virtual Network (CIDR notation)')
@allowed(['10.0.0.0/16'])
param addressSpace string = '10.0.0.0/16'

@description('Address prefix for the Subnet (CIDR notation)')
param subnetPrefix string = '10.0.1.0/24'

@description('Location for the resources')
param location string = resourceGroup().location

resource vnet 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        addressSpace
      ]
    }
    subnets: [
      {
        name: subnetName
        properties: {
          addressPrefix: subnetPrefix
        }
      }
    ]
  }
}
