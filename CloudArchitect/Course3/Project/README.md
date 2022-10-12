# Cloud Architect Nanodegree Course 3 Project

## Before you start (Pre-requisites & Points to remember )

1. Consider an alphanumeric string of 6 values starting with an alphabet in lowercase, that you need to use as **UniqueID** for the rest of the lab. For example: **a14d6e**.

2. Create/Ddeploy all the resource groups and resources in the same region

3. Select the region only in the **Region** property. Do not make any modifications to **Location** property "[resourceGroup().location]". 

![Location Details](./media/Location-details.jpg)

## Deployment Guide

### 1. Deploy to Resource Group: rg-data

**a) Files to download:** <br/>
Download the files "deploy-02.json" and "deploy-02.parameters.json" available in the path "Udacity/CloudArchitect/Course3/Project/rg-data/".

**b) Create Resource Group:** <br/>
Create a resource group with name rg-data.

**c) Deploy:** <br/>
Deploy the files to rg-data resource group after providing the UniqueID value.

![UniqueID Details](./media/provide-uniqueid.jpg)

------------------------------------------------------------------

### 2. Deploy to Resource Group: rg-devdata

**a) Files to download:** <br/>
Download the files "deploy-04.json" and "deploy-04.parameters.json" available in the path "Udacity/CloudArchitect/Course3/Project/rg-devdata/".

**b) Create Resource Group:** <br/>
Create a resource group with name rg-devdata.

**c) Deploy:** <br/>
Deploy the files to rg-devdata resource group after providing the UniqueID value just as you did in the previous step.

------------------------------------------------------------------

### 3. Deploy to Resource Group: rg-core

**a) Files to download:** <br/>
Download the files "deploy-vnetcore.json" available in the path "Udacity/CloudArchitect/Course3/Project/rg-core/".

**b) Create Resource Group:** <br/>
Create a resource group with name rg-core.

**c) Deploy:** <br/>
Deploy the file to rg-core resource group. It is not required to provide UniqueID value to this file.

------------------------------------------------------------------

### 4. Deploy to Resource Group: rg-prod

**a) Files to download:** <br/>
Download the files "deploy-vnetprod.json" available in the path "Udacity/CloudArchitect/Course3/Project/rg-prod/".

**b) Create Resource Group:** <br/>
Create a resource group with name rg-prod.

**c) Deploy:** <br/>
Deploy the file to rg-prod resource group. It is not required to provide UniqueID value to this file.

------------------------------------------------------------------

### 5. Deploy to Resource Group: rg-hrlegal

**a) Files to download:** <br/>
Download the files "deploy-01.json" and "deploy-01.parameters.json" available in the path "Udacity/CloudArchitect/Course3/Project/rg-hrlegal/".

**b) Create Resource Group:** <br/>
Create a resource group with name rg-hrlegal.

**c) Deploy:** <br/>
Deploy the file to rg-hrlegal resource group by providing the AzureUserName, AzurePassword and UniqueID.

------------------------------------------------------------------
