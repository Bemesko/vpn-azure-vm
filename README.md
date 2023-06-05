# vpn-azure-vm
Infrastructure as Code definition for the VM that I use to connect to customers' VPNs. Using this repo as an opportunity to learn more about Azure deployment templates.

## Checklist
- [ ] Learn about basic Bicep syntax and concepts
- [ ] Deploy a resource group
- [ ] Deploy a VM with the same specs as my VPN VM

## Notes

- Azure Bicep Documentation: https://learn.microsoft.com/pt-br/azure/azure-resource-manager/bicep/
- Full Learning Path for Bicep: https://learn.microsoft.com/pt-br/training/paths/fundamentals-bicep/
- Full Azure Resource Bicep Reference: https://learn.microsoft.com/en-us/azure/templates/
- Bicep is declarative and applying templates is idempotent, so it's more practical than deployment scripts
- Although Terraform is more universal, Bicep tends to have a simpler syntax and less overhead, apparently
- Idea: Use Azure Calculator to generate a forecast of how much a deployment template is going to cost
- Bicep cannot be used to deploy Helm charts in clusters directly, so it would involve creating a separate script to install the necessary charts (which can also be done declaratively)
- Bicep can be installed by getting the VSCode Extension + `az install bicep` (or `choco install bicep`)

## Learning Path: Building your first Bicep Template

**Link:** https://learn.microsoft.com/pt-br/training/modules/build-first-bicep-template/1-introduction

- Bicep is deployed with:

`az deployment group create --template-file main.bicep`

- Deployment groups' statuses can be checked with:

`az deployment group list -o table`

- Some common parameters accross resources:
  - name
  - location
  - sku (pricing tier)
  - properties

**checkpoint:** https://learn.microsoft.com/en-us/training/modules/build-first-bicep-template/5-add-flexibility-parameters-variables