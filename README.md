# Terratest-poc
* Terratest is a Go library that makes it easier to write automated tests for your infrastructure code 
* This repo is to run the Terratest Terraform IaC Testing . 

## Pre-Request
Create Terraform Modules in the examples directory 
In this repo , examples directory contains Module for creating the Resource Group 

## Docker
Terratest uses the GO Library to run the Tests , docker directory contains Dockerfile for building the GO Library, Terraform and Azure - CLI . 

### How to run Build and Run the container

Run the **runTerratest.sh** script to build the container and run . 

It mounts volume goworkspace directory from this repo to /go/src in the Terratest Docker container. 

## How to run Terratest  
* Configure Azure authentication (az login)
* From test directory and run 
```
go test -v
```
This command will create the Resource Group and outputs Resource Group name and Location.

Terratest verifies name and Location , if resourceGroup Name and Location matches expected values , then test will be passed . 

This is sample script to run the Terratest and this can be expanded to AWS or other modules. 






