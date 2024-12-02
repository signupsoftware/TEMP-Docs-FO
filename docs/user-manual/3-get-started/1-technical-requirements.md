---
title: Technical Requirements   
sidebar_position: 2
hide_title: true
custom_edit_url: null
---
## Technical Requirements for installation 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

The following technical specifications are the pre-requisites for the installation of ExFlow with Microsoft Dynamics 365 for Finance and Operations. 
Note: The Customer is responsible for having the right license and support agreements with Microsoft.

### ExFlow in Microsoft Dynamics 365 for Finance and Operations Cloud 
- ExFlow is installed via the automatic build procedure or from a deployable package, after a complete compilation of Microsoft Dynamics 365 for Finance and Operations. 
- ExFlow approvers must be users in Microsoft Dynamics 365 for Finance and Operations with minimum license type Team Member User.
- Microsoft Dynamics 365 for Finance and Operations Email parameters must be set up by the partner or the customer.
- Microsoft Dynamics 365 for Finance and Operations Document management must be set up by the partner or the customer.

### ExFlow Web SaaS Multitenant (optional)
- The approval process can be handled both from an external web application and/or within the standard Microsoft Dynamics 365 for Finance and Operations installation.
- The SaaS application is deployed in a ExFlow multitenant environment shared with other web applications.
- Connected to Azure AD and Microsoft Dynamics 365 for Finance and Operations thru a so-called Enterprise Application. Consented by an Azure Global Administrator.
- Communication with Microsoft Dynamics 365 for Finance and Operations with Azure AD and Oauth 2.0.
- Same security technology that Microsoft Dynamics 365 for Finance and Operations is using.
- Registering the necessary Azure AD Enterprise Application(s) as service user in Microsoft Dynamics 365 for Finance and Operations.

### ExFlow Web SaaS Dedicated (optional)
- The approval process can be handled both from an external web application and/or within the standard Microsoft Dynamics 365 for Finance and Operations installation.
- The SaaS application is deployed into its own ExFlow resource pool used only by your web environments.
- Connected to Azure AD and Microsoft Dynamics 365 for Finance and Operations thru a so-called Enterprise Application. Consented by an Azure Global Administrator.
- Communication with Microsoft Dynamics 365 for Finance and Operations with Azure AD and Oauth 2.0.
- Registering the necessary Azure AD Enterprise Application(s) as service user in Microsoft Dynamics 365 for Finance and Operations.
- Same security technology that Microsoft Dynamics 365 for Finance and Operations is using.

### ExFlow Web Self-hosted (optional)
- The approval process can be handled both from an external web application and/or within the standard Microsoft Dynamics 365 for Finance and Operations installation. If the external web in customer owned cloud should be used an Azure subscription is needed.
- Azure subscription admin or Contributor account.
- ExFlow Web is running as an App Service on the customer Azure environment as a Resource group and will therefore require the customer to have an Azure subscription.
- Deployed into the tenant’s Azure environment as a Resource group that contains
- Web site.
- Storage account.
- Connected to Azure AD and Microsoft Dynamics 365 for Finance and Operations thru a so-called App Registration.
- Registering the necessary Azure AD Enterprise Application(s) as service user in Microsoft Dynamics 365 for Finance and Operations.
- Communication with Microsoft Dynamics 365 for Finance and Operations with Azure AD and Oauth 2.0.
- Same security technology that Microsoft Dynamics 365 for Finance and Operations is using.

### ExFlow Web Application on-premise (optional)
- The approval process can be handled both from an external web application and/or within the standard Microsoft Dynamics 365 for Finance and Operations installation.
- On-premise D365 F&O.
- Sufficiently setup and update ADFS environment to support external communication.
- Deployed into customer Service Fabric as a VM.
- Communication with Microsoft Dynamics 365 for Finance and Operations with ADFS and Oauth 2.0.
- Same security technology that Microsoft Dynamics 365 for Finance and Operations is using.

### ExFlow Web Client Software (optional)
Clients can be Windows 7 or later, Apple Mac, iPad, iPhone with iOS, Android tablets & phones with the latest release of the operating systems. 
Supported web browsers (the latest versions): 
- Google Chrome (recommended)
- Microsoft Edge
- Safari

### Invoice Data Integration other than ExFlow Data Capture (optional)
ExFlow can import invoice data from
- Azure blob storage
- SFTP
- FTP (can be used for non self-service environments) 


*Updated 2024-03-27*