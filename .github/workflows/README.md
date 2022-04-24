## List subscription
´´´
> az account list --output table
Name                  CloudName    SubscriptionId                        State    IsDefault
--------------------  -----------  ------------------------------------  -------  -----------
Azure subscription 1  AzureCloud   850061f0-60cb-4341-b7c1-14464feab18a  Enabled  True
´´´

## Create Azure Ressource Group
´´´
> az group create --name solutionUsingHashResourceGroup --location northeurope
{
  "id": "/subscriptions/850061f0-60cb-4341-b7c1-14464feab18a/resourceGroups/solutionUsingHashResourceGroup",
  "location": "northeurope",
  "managedBy": null,
  "name": "solutionUsingHashResourceGroup",
  "properties": {
    "provisioningState": "Succeeded"
  },
  "tags": null,
  "type": "Microsoft.Resources/resourceGroups"
}
´´´

## Create Azure Ressource Group
´´´
id=850061f0-60cb-4341-b7c1-14464feab18a
group=solutionUsingHashResourceGroup
az ad sp create-for-rbac --name "myApp" --role contributor \
    --scopes /subscriptions/${id}/resourceGroups/${group} \
    --sdk-auth
```