---
title: ExFlow web
sidebar_position: 10
hide_title: true
custom_edit_url: null
---
## ExFlow web <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

* Requiries Azure subscription admin account.
* Installation done by Partner/Customer.
* Deployed into the tenant’s Azure environment as a Resource group that contains:
    - Web site
    - Storage account
* Connected to Azure AD and D365O thru a so called App Registration.
* Communication with D365O with Azure AD and Oauth 2.0
Same security technology that D365O is using.

## D365FO - ExFlow Web Service User
**ExFlow Cloud Hosted by SignUp**

### Using Azure AD Application as Service User
The purpose of this Service User is to import data from D365FO to ExFlow Web without any limitations of the data loaded.
This guide includes steps to find the Service Principal used by the ExFlow Web application and adding a service user to that application.

**Limitations and system requirements**:
* This service role *must not* be setup with Assign organization since this will prevent correct caching of data to ExFlow web.
* This is an added feature from Version 2020.5.0 of ExFlow Web.

### Finding Azure AD Application ID ExFlow Cloud 
In the consent link used at the initial setup of the application you will find the application ID that ExFlow Cloud Web uses to setup a service principal in the customer's tenant.
The consent link can be found in the on boarding portal of an existing deployment. Copy the value from the parameter “client_id=” of the consent link:

https://login.microsoftonline.com/organizations/v2.0/adminconsent?client_id=107b6124-27de-499c-8150-bcfd9db12ab1&state=12345&redirect_uri=https://exfsupport.exflow.cloud/inbox.aspx&scope=https://erp.dynamics.com/.default

**Note:**  SignUp Software can provide the client id upon request. Please register a support ticket at: https://support.signupsoftware.com when creating the ticket request, e.g. clear subject stating: 
CUSTOMER name - Request for ExFlow Web/Cloud Client ID for Test/UAT/Production in connection with creating the "ExFlow Web Service User".
Or the customer’s ExFlow Partner has access to the onboarding portal and can provide the client id upon request.

### Add Azure Application to Service User in D365FO

**Note:**  In Finance And Operations version 10.0.38 and onwards users registered in D365FO requires a user to exist in Entra ID (Azure AD). This means that you will need to create an Entra ID (Azure AD) user & configure it as the ExFlow Web Service User in D365FO Users.

1. Create a user that corresponds to the user credentials for ExFlow Web:
* Go to System administration > Users > Users.
* Create a user.
* Assign the ExFlow service user role to the user (No other roles should be selected). Note: Before ExFlow version 2.5.2, use the “ExFlow web user role” instead.
* Make sure that the company field is not empty (applicable for all legal entities).

![Graphical user interface, application Description automatically generated](@site/static/img/media/image233.png)


2.	Associate your Azure AD application with the ExFlow service user:
* Go to System administration > Setup > Microsoft Entra ID applications.
* Select New on the Action Pane to create a line. 
* In the Client ID field, enter the client ID that you made a note of in the previous section.
* In the Name field, enter a name.
* In the User ID field, select the user ID that you just created.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image234.png)

### Check and confirm that the service user calls newly created "ExFlow web service User" is working as intended.
Now check that the service user is making the first calls to import data from D365FO to ExFlow Web without any limitations on the data loaded.

### How to Enable Logging In D365: 
**Note:** Logging of web services can severely affect performance in ExFlow web and should only be switched to check that the service user is making the first calls or when investigating suspected errors in ExFlow web.

Exflow \| Inquiries and reports \| logging \| logging parameters

![small](@site/static/img/media/image235.png)

- Enable Logging parameters wsGetUsers and  wsGetSetSystemTable
- Make sure to press "Save" after making changes.

### How to check that the service user is making the first calls: 
Exflow \| Inquiries and reports \| logging \| log for external web

![Graphical user interface, application Description automatically generated](@site/static/img/media/image236.png)

**Note: Once the validation is completed and verified (the service user is making calls), the logging parameters should once again be disabled.**


## D365FO - ExFlow Web Service User
**ExFlow Cloud Self hosted by Customer**
(Running the ExFlow web in a customer's own tenant Azure)

### Using Azure Active Directory (Azure AD) Application as Service User (ExFlow Cloud Self hosted by Customer)
The purpose of this Service User is to import data from D365 F&O to ExFlow Web without any limitations of the data loaded.
This guide includes steps to find the Service Principal used by the ExFlow Web application and adding a service user to that application.

**Limitations and system requirements**:
* This service role *must not* be setup with "Assign organization" feature since this will prevent correct caching of data to ExFlow web.
* This is an added feature from Version 2020.5.0 of ExFlow Web.

### Finding Azure AD Application ID "Self-hosted"
When running ExFlow Web in a customer's tenant you can either search the deployment name in Azure AD or find the application in the Web Application Configuration (Steps below):
* Login to Azure Portal and find the application that is used to host ExFlow Web.
* In the application blade go to: “Configuration” \| “Application Settings” and copy the value from “aad_ClientId”.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image237.png)


### Add Azure Application to Service User in D365FO
1.Create a user that corresponds to the user credentials for ExFlow Web:
* Go to System administration \| Users \| Users.
* Create a user. (doesn't have to be a AAD user)
* Assign the ExFlow service user role to the user (No other roles should be selected). 
**Note**: Before ExFlow version 2.5.2, use the “ExFlow web user role” instead.
* Make sure that the company field is not empty (applicable for all companies/Legal enities in the same dynamics environment)

![Graphical user interface, application Description automatically generated](@site/static/img/media/image238.png)


2.	Associate your Azure AD application with the ExFlow service user:
* Go to System administration >| Setup >| Azure Active Directory applications.
* Select **New** on the Action Pane to create a line. 
* In the **Client ID** field, enter the client ID that you made a note of in the previous section.
* In the **Name** field, enter a name.
* In the **User ID** field, select the user ID that you just created.
 
![Graphical user interface, application Description automatically generated](@site/static/img/media/image239.png)

### Check the service user call Self-hosted
Now check that the service user is making the first calls, to import data from D365FO to ExFlow Web without any limitations on the data loaded.

### How to Enable Logging In D365 Self-hosted: 

**Note**: Logging of web services can severely affect performance in ExFlow web and should only be switched to check that the service user is making the first calls or when investigating suspected errors in ExFlow web.

Exflow \| Inquiries and reports \| logging \| logging parameters.

![small](@site/static/img/media/image243.png)

•	Enable Logging parameters wsGetUsers and wsGetSetSystemTable.
•	Make sure to press "Save" after making changes.

### How to check that the service user is making the first calls: Self-hosted

Exflow \| Inquiries and reports \| logging \| log for external web

![Graphical user interface, application Description automatically generated](@site/static/img/media/image244.png)
 
**Note**: Once the validation is completed and verified (the service user is making calls), the logging parameters should once again be disabled.

