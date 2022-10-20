# Enterprise Security Nanodegree Course 2 Exercise: Container Scanning

## Before you start (Pre-requisites & Points to remember )

1. Consider an alphanumeric string of 6 values starting with an alphabet in lowercase, that you need to use as **UniqueID** for the rest of the lab. For example: **a14d6e**.

2. Create/deploy all the resource groups and resources in the region mentioned in the classroom instructions.

3. Select the region only in the **Region** property. Do not make any modifications to **Location** property "[resourceGroup().location]". 

![Location Details](./media/Location-details.jpg)

## Deployment Guide

### 1. Deploy to Resource Group: jumpvm

**a) Files to download:** <br/>
Download the files "deploy-01.json" and "deploy-01.parameters.json" available in the path "Udacity/EnterpriseSecurityND/Course2-Exercise-ContainerScanning/RG-jumpvm/".

**b) Create Resource Group:** <br/>
Create a resource group with name **jumpvm**.

**c) Deploy:** <br/>
Deploy the files to **jumpvm** resource group after providing the UniqueID value.

![UniqueID Details](./media/provide-uniqueid.jpg)


------------------------------------------------

### 2. Deploy to Resource Group: ESND-C2-Exercise2

**a) Files to download:** <br/>
Download the files "deploy-02.json" and "deploy-02.parameters.json" available in the path "Udacity/EnterpriseSecurityND/Course2-Exercise-ContainerScanning/RG-ESND-C2-Exercise2/".

**b) Create a resource group:** <br/>
Create a resource group with name **ESND-C2-Exercise2**.

**c) Deploy:** <br/>
Deploy the file to **ESND-C2-Exercise1** resource group after providing the UniqueID value and replacing the <PASTE-THE-VmName-IMAGE-ID-HERE> with image reference ID for all the 2 VMs.

![UniqueID Details](./media/provide-uniqueid.jpg)


![Image reference ID](./media/img-reference.jpg)


-------------------------------------------------------------------------------

