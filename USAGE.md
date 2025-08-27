# HashiCorp Customer Workshop TF Module - Azure Landing Zone

## Overview

This repository manages a Terraform Module that creates a very simple "Landing Zone" (Base Infrastructure) in a Microsoft Azure Subscription. It is meant to be used with the [HashiCorp Customer Workshop TF Registry Module - Azure Landing Zone](https://github.com/leefowlercu/hashicorp-workshop-tf-registry-module-azure-landing-zone) Module to showcase:

- Private Registry Module Usage
- Landing Zone Strategies
- Conditional Configuration

## Usage

Fork this repository and create a two Workspaces in the Customer Workshop HCPTF/TFE Organization. One will target the forked repository's `nonprod` branch and the other will target the forked repository's default (`master`/`main`) branch. Add the required Variables on the Workspaces and Authenticate the AzureRM Provider using Environment Variables in either the Workspace Variables or a Variable Set.
