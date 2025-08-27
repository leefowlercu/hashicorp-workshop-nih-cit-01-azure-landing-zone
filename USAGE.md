# HashiCorp Customer Workshop TF Module - Azure Landing Zone

## Overview

This repository manages a Terraform Module that creates a very simple "Landing Zone" (Base Infrastructure) in a Microsoft Azure Subscription. It is meant to be used with the [HashiCorp Customer Workshop TF Registry Module - Azure Landing Zone](https://github.com/leefowlercu/hashicorp-workshop-tf-registry-module-azure-landing-zone) Module to showcase:

- Private Registry Module Usage
- Landing Zone Strategies
- Conditional Configuration

## Usage

Fork this repository, then, in your fork, replace `<tf-hostname>`, `<tf-organization-name>`, and `<tf-registry-module-name>` in `main.tf` with the correct values for your Workshop, then create two Workspaces in the Customer Workshop HCPTF/TFE Organization. One will target the forked repository's `nonprod` branch and the other will target the forked repository's default (`master`/`main`) branch. Add the required Variables on the Workspaces and Authenticate the AzureRM Provider using Environment Variables in either the Workspace Variables or a Variable Set.


## Example

```
customer-workshop-organization                         # HCPTF/TFE Workshop Organization 
└── landing-zones                                      # HCPTF/TFE Project for Landing Zones/Base Infrastructure
    ├── azure-customer-workshop-nonprod-landing-zone   # NonProd Landing Zone Workspace -> Targets `nonprod` Branch on Fork
    └── azure-customer-workshop-prod-landing-zone      # Prod Landing Zone Workspace -> Targets `master/main` Branch on Fork
```
