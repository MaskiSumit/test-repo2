@allowed([
  'allowed eastus only'
])
param location string = 'eastus'
@minLength(5)
@maxLength(25)
@description('This is the naming convension for our org for storage name')
param storageName string = 'test-storage'
@description ('This is just for billing purpose')
param accessTier string = 'Hot'


resource storageaccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: storageName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  } 
  properties: {
    accessTier: accessTier
  }  
}
