---
title: Electronic invoices in the Peppol 3.0 format.
sidebar_position: 5
hide_title: true
custom_edit_url: null
---
## Electronic invoices in the Peppol 3.0 format.
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

### General description
It’s more and more common to use electronic invoices and currently we offer two solutions for receiving electronic invoices in the Peppol 3.0 format.
This section describes how to use and receive e-invoices in Peppol format through ExFlow **by using D365FO standard functionality with your own Peppol broker**.
To read about ExFlow document integration module that handles incoming and outgoing invoices in Peppol format using our Broker, see below link:

https://docs.signupsoftware.com/finance-operations/docs/user-manual/document-integration/peppol-service

### Prerequisites
D365FO standard functionality for Electronic invoices needs to be set up and configured. 
**Note: this doesn’t apply to use ExFlow Document Integration (e-Invoicing), Peppol Service.**

https://learn.microsoft.com/en-us/dynamics365/finance/localizations/global/e-invoicing-set-up-parameters

### Application requirements
The Invoice XML files should be imported to D365FO and pending invoice fully created.

### Setup Import method
To be able to import the invoices to ExFlow an Import method for Peppol needs to be setup to handle the incoming invoices.

Navigate to ExFlow | Setup | Import methods
- Select `New` and choose "Microsoft electronic invoice" as Import method.

For more detailed description on how to create an import method see below link:
https://docs.signupsoftware.com/finance-operations/docs/user-manual/import-methods/setup-import-methods

![medium](@site/static/img/media/image554.png)

![medium](@site/static/img/media/image555.png)

### Setup Peppol format – EHF 3.0
See below section for description on how to set up the Peppol format.

https://docs.signupsoftware.com/finance-operations/docs/user-manual/import-methods/setup-import-methods#setup-peppol-format---ehf-30

### Company identifiers
See below section on how to set up Company identifiers.

https://docs.signupsoftware.com/finance-operations/docs/user-manual/import-methods/setup-import-methods#company-identifiers

### Electronic reporting source
Don´t forget to set up SharePoint folders and make the setup in Electronic reporting source under Organization administration in standard Dynamics.

### Process
#### Import invoices by batch
To import the electronic invoices into ExFlow you need to setup the batch job for "Import invoice files (Multiple methods) navigate to 

ExFlow | Periodic tasks | Import | Integrations | Import invoice files (Multiple methods)

**Please note**: It’s recommended to set up this process to run in batch.
When below job has been run you can now import and handle your invoices as usual from the import form, navigate to;

ExFlow | Invoices | Import forms | Import form All

![medium](@site/static/img/media/image556.png)

![medium](@site/static/img/media/image557.png)