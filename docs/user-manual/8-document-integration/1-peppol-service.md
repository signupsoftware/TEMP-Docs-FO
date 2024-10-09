---
title: Peppol Service
sidebar_position: 1
hide_title: true
custom_edit_url: null
---
## General Description <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

Peppol incoming and outgoing invoices will handle the transportation between D365FO and an external party when sending outgoing and receiving invoices in the Peppol 3.0 format. Electronic documents in D365FO must be setup for Peppol outgoing invoices. The ExFlow Document Integration platform is added as a new module in D365FO and will handle the transportation of the Peppol Invoice from and to D365FO using a Peppol broker and the invoice will be sent to the customers that shall receive the invoices. With this new module you will also get a good overview of your Peppol invoices and what state they are in. 

The ExFlow Document Integration platform is included in the ExFlow module. You subscribe to the solution via Microsoft Marketplace and can choose the plan that best suits your needs. The cost is based per invoice and is not included in the annual ExFlow fee.

**Objectives of ExFlow Document integration and Peppol incoming and outgoing invoices**
The ExFlow document Integration platform is a new product within the ExFlow family and will in this version handling incoming and outgoing Peppol invoices. More functionality within this new module will be added in the future.

### Prerequisites for ExFlow Document Integration
- Requires new code to be installed to gain access to the new menu elements.
- D365 F&O Electronic Reporting must be setup to generate Peppol invoices.
- A subscription to a Marketplace offer must be setup to be able to use the new Peppol Service.


### Menu´s
When installing the new model two new menu exit is added below ExFlow. ExFlow Core and ExFlow document integration. The ExFlow Core menu exit is used to handle the subscription. (This is where you sign up and pay for the new functionality via Microsoft Marketplace).

![medium](@site/static/img/media/image459.png)

The new Peppol functionality is found under the ExFlow document integration menu.

![medium](@site/static/img/media/image460.png)

### Setup
#### Connect to the subscription for the Peppol Service
**ExFlow Document integration | Setup | Shared parameters**

The first step to setup the Peppol Service is to push the Initiate button to fill in the necessary URL’s.

![large](@site/static/img/media/image461.png)

**ExFlow Core | Common | Subscriptions**

Select General/Onboarding to start the subscription for the Peppol Service at Microsoft Marketplace.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image462.png)

Push on the button Azure Marketplace and follow the instructions to subscribe to an offer.

![small](@site/static/img/media/image463.png)

A web page in Microsoft Azure is opened with Peppol E-Invoicing offer. Choose your desired plan and follow the instructions on the web page. Make sure you have the correct permissions in your Azure tenant to do purchases in Azure Marketplace.

![medium](@site/static/img/media/image464.png)

Fill in the Resource group, Name and click Review+subscribe.

![medium](@site/static/img/media/image465.png)

![medium](@site/static/img/media/image466.png)

- Push the "Check subscription" button and please notice that the text has changed to “Subscribed”.
- Push the button “Sign in” and then “Post”, ExFlow Document Integration is now connected to a subscription.
- After the post button is pressed the subscription shall be set to onboarded = yes.

![large](@site/static/img/media/image467.png)


### Document profiles
**ExFlow Document integration | Setup | Document profiles**

Push the button “Get document profiles” to load all different Peppol formats that are available and activate the profiles that will be used (for example 158 and 160 are very common in Europe)

![medium](@site/static/img/media/image468.png)


### Parameters
**ExFlow Document integration | Setup | Parameters**

#### General
Select the type of logging you prefer, when testing the system it is recommended to set logging to "Always" and when running in production it should be set to Errors only.

![medium](@site/static/img/media/image469.png)

#### Peppol
On this page your Peppol address is setup consisting of Country code and participant id. 

**Invoice**

Fill in the document profiles that are used in your country region for invoices and project invoices.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image470.png)

### Create export method
**ExFlow document integration | Setup | Export setup**

Create a new export method for Peppol.
- Select New
- Select the Export method - In this case Peppol
- Add the description

![large](@site/static/img/media/image471.png)

### Customers
**ExFlow document integration | Common | Customer**

To set up your customer to send Peppol invoices, their Peppol address must be filled in. The customer address for Peppol can be found by using Search that will search in the “yellow pages” for Peppol.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image472.png)

On the customer card in D365 F&O the customers that shall receive Peppol invoices must be set to eInvoice equals yes, if eIncvoice attachments is set to yes and a print format is setup the PDF image of the invoice will be included in the Peppol XML file as an embedded file in base 64 format.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image473.png)

### Customer documents
**ExFlow document integration | Common | Customer documents**

The Customer documents is an overview form of all outgoing Peppol invoices. The handling of sending, receiving different statuses etc. can all be handled from this form. When the system is set up a batch job is taking care of the whole process, but it can also be done manually during for example a test phase.

![large](@site/static/img/media/image474.png)

#### Action
| Button | Description |
| ---- | ---- |
|Get electronic documents|Retrieve the documents from the standard que “Electronic reporting jobs” and gets the status “Waiting”.|
|Send document|Send the document via the API to the Peppol network.|
|Get status|Retrieves the status of the invoice from the Peppol network.|
| Set ready to complete | When the status of an invoice is “Ready” it can be set to complete and will disappear from the list.|


#### Reference
| Button | Description |
| ---- | ---- |
|Batch | Opens all batch jobs that are associated with ExFlow Document integration.|
|Communication log| This opens the log form and displays the communication for this unique invoice. See more detailed instructions further down in the section “Communication log”.|
|Error information| If an invoice has the status “Error” more information can be found about the error, for example if a GLN number is missing when an invoice is sent out, the validation in the Peppol network will reject the invoice and inform that it has errors. This function retrieves the error information from the communication log and makes it easier to read in plain text.|


![large](@site/static/img/media/image475.png)

### Vendors
**ExFlow document integration | Common | Vendors**

To set up your vendor to receive Peppol invoices their Peppol address must be filled in. The vendor address for Peppol can be found by using Search that will search in the “yellow pages” for Peppol.

![large](@site/static/img/media/image476.png)

### Vendor documents
**ExFlow document integration | Common | Vendor documents**

The Vendor documents is an overview form of all incoming Peppol invoices. The handling of receiving different statuses etc. can all be handled from this form. When the system is set up a batch job is taking care of the whole process, but it can also be done manually during for example a test phase.

When the invoice is set to the status “waiting” it can be imported in ExFlow as any other invoice. The invoice will be imported by running the Import Method “Peppol E-Invoicing”.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image477.png)

#### Action
| Button | Description |
| ---- | ---- |
|Get vendor documents| Retrieve the documents from the Peppol network.|
|Set to waiting-validate| Validates that the invoice has the correct format, and that the vendor is set up in the system.|
|Set Ready to Complete|When the status of an invoice is “Ready” it can be set to complete and will disappear from the list.|

#### Reference
| Button | Description |
| ---- | ---- |
|Batch| Opens all batch jobs that are associated with ExFlow Document integration.|
| Communication log| This opens the log form and displays the communication for this unique invoice. See more detailed instructions further down in the section “Communication log”.|
|Error information| If an invoice has the status “Error” more information can be found about the error. This function retrieves the error information from the communication log and makes it easier to read in plain text.|

![medium](@site/static/img/media/image478.png)

### Import methods
**ExFlow | Setup | Import methods**

To import vendor invoices received from Peppol a new import method (ExFlow document integration) must be setup in standard ExFlow. 
More information on how to setup import methods can be found under sections import methods.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image479.png)

### Communication log
**ExFlow document integration | Inquiries | Communication log**

The communication log logs all the communication between F&O and the Peppol Network. If you receive an error message it can be retrieved from the log.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image480.png)

### Inquiries
**ExFlow document integration | Inquiries**

| Menu | Description |
| ---- | ---- |
| Electronic documents| Opens the standard FO form for Electronic reporting jobs.|
| Document statistics| Opens a statistics page of all documents processed via ExFlow Document Integration.|
|Subscriptions| Opens the form that display the active subscriptions used.|
|Sent billing|Opens a form displaying transactions sent for billing.| 

### Periodic
**ExFlow document integration | Periodic**

| Menu | Description |
| ---- | ---- |
| Execute all documents|This batch job handles the complete process of all the steps processing incoming and outgoing Peppol invoices, see pic. below.|
|Execute customer documents|This batch job handles the complete process for outgoing Peppol invoices.|
|Execute vendor documents|This batch job handles the process for incoming Peppol invoices. To handle incoming invoices also the Import method that is used to import invoices in ExFlow must be set up.|
|Clean up communication log|This batch job deletes the messages in communication log.|
|Activate customer|Activate customer is used to automatically set one or several customers to set up the eIncvoice parameter to yes in the standard customer form.|
|Customer check setup|Used to verify the setup of customer settings in standard that is used with Peppol outgoing invoices.|

![small](@site/static/img/media/image481.png)

