# HashiCorp Customer Workshop TF Module - Azure Landing Zone

## Overview

This repository manages a Terraform Module that creates a very simple "Landing Zone" (Base Infrastructure) in a Microsoft Azure Subscription. It is meant to be used with the [HashiCorp Customer Workshop TF Registry Module - Azure Landing Zone](https://github.com/leefowlercu/hashicorp-workshop-tf-registry-module-azure-landing-zone) Module to showcase:

- Private Registry Module Usage
- Landing Zone Strategies
- Conditional Configuration

## Usage

Fork this repository and create a Workspace in the Customer Workshop HCPTF/TFE Organization. Add the required Variables on the Workspace and Authenticate the AzureRM Provider using Environment Variables in either the Workspace Variables or a Variable Set.
