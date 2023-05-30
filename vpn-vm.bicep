@description('Specifies the location for resources.')
param location string = 'eastus'

param vmName string = 'VPN_VM'

resource vmVpns 'Microsoft.Compute/virtualMachines@2023-03-01' = {
  name: vmName
  location: location
  properties: {}
}
