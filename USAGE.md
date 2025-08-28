# HashiCorp Customer Workshop TF Module - Azure Landing Zone

## Overview

This repository manages a Terraform Module that creates a very simple "Landing Zone" (Base Infrastructure) in a Microsoft Azure Subscription. It is meant to be used with the [HashiCorp Customer Workshop TF Registry Module - Azure Landing Zone](https://github.com/leefowlercu/hashicorp-workshop-tf-registry-module-azure-landing-zone) Module to showcase:

- Private Registry Module Usage
- Landing Zone Strategies
- Conditional Configuration
- Config-Driven Import

## Usage

### Standard Module Showcase Usage

Fork this repository (including all branches), then, in your fork, replace `<tf-hostname>`, `<tf-organization-name>`, `<tf-registry-module-name>`, and `<tf-registry-module-version>` in `main.tf` with the correct values for your workshop, then create two workspaces in the customer workshop HCPTF/TFE organization. One will target the forked repository's `nonprod` branch and the other will target the forked repository's default (`master`/`main`) branch. Add the required variables on the workspaces and authenticate the `azurerm` provider using environment variables in either the workspace variables or a variable set.

### Config-Driven Import Showcase Usage

This module, and the "Landing Zone" child module which it uses ([HashiCorp Customer Workshop TF Registry Module - Azure Landing Zone](https://github.com/leefowlercu/hashicorp-workshop-tf-registry-module-azure-landing-zone)), include a helper output that, after the module is successfully applied, will provide a JSON representation of the import IDs necessary to populate `imports.tf`. We also include helper scripts in this repository to translate those import IDs to a pre-configured `imports.tf` file (`update_imports.sh`/`update_imports.ps1`). To showcase config-driven imports in Terraform, create the resources using this module as per the standard usage instructions above, and then perform the following actions (in your Fork, on the appropriate Branch):

1. Copy the `import_ids` object value from the outputs of the workspace and paste it directly into `importids.json`. Save the file.
2. Uncomment the import blocks in `imports.tf` (Cmd+A + Cmd+/ MacOS, Ctrl+A + Ctrl+/ Windows). Save the file.
3. Run either of the `update_imports` scripts, depending on your platforms native shell. Validate `imports.tf` contains the correct import IDs.
4. *Force Delete the existing Workspace*. Yes, *Force Delete* it! The goal is to showcase importing existing, unmanaged infrastructure into Terraform management.
5. Commit and push the changes including the updated, uncommented `imports.tf` file to your Fork's remote repo, on the appropriate branch.
6. Remake your workspace in HCPTF/TFE using the same variable values. This time instead of creating new infrastructure the module should read the import blocks and import the infrastructure into Terraform management.

## Example

```
customer-workshop-organization                         # HCPTF/TFE Workshop Organization 
└── landing-zones                                      # HCPTF/TFE Project for Landing Zones/Base Infrastructure
    ├── azure-customer-workshop-nonprod-landing-zone   # NonProd Landing Zone Workspace -> Targets `nonprod` Branch on Fork
    └── azure-customer-workshop-prod-landing-zone      # Prod Landing Zone Workspace -> Targets `master/main` Branch on Fork
```
