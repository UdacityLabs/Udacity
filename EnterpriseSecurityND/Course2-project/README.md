# Enterprise Security Nanodegree Course 2 Project

## Before you start (Pre-requisites & Points to remember )

1. Consider an alphanumeric string of 6 values starting with an alphabet in lowercase, that you need to use as **UniqueID** for the rest of the lab. For example: **a14d6e**.

2. Create/deploy all the resource groups and resources in the region mentioned in the classroom instructions.

3. Select the region only in the **Region** property. Do not make any modifications to **Location** property "[resourceGroup().location]". 

![Location Details](./media/Location-details.jpg)

## Deployment Guide

**a) Files to download:** <br/>
Download the files "deploy-01.json" and "deploy-01.parameters.json" available in the path "Udacity/EnterpriseSecurityND/Course2-project/".

**b) Create a resource group:** <br/>
Create a resource group with name **entp-project2**.

**c) Deploy:** <br/>
Deploy the file to **entp-project2** resource group after providing the UniqueID value and replacing the <PASTE-THE-VmName-IMAGE-ID-HERE> with image reference ID for all the 3 VMs.

![UniqueID Details](./media/provide-uniqueid.jpg)




![Image reference ID](./media/img-reference.jpg)


-------------------------------------------------------------------------------

