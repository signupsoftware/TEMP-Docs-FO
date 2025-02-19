---
title: Microsoft Invoice Capture
sidebar_position: 6
hide_title: true
custom_edit_url: null
---
## Microsoft Invoice Capture
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

### General description
Support has been provided for importing invoices to ExFlow that are interpreted in Microsoft Invoice Capture. To be able to use this Microsoft Invoice Capture has to be setup in your power platform environment and configured accordingly to standard. This document on reflect the setup that is needed in ExFlow.

For more information about MS Invoice Capture see below link:

https://learn.microsoft.com/en-us/dynamics365/finance/accounts-payable/invoice-capture-overview

### Pre-requisites for ExFlow Microsoft Invoice Capture Import Method
- Requires invoice type to be setup to Vendor Invoice.
- Requires the company to be added in the ExFlow Import method.

### Invoice capture parameters
When setting up Invoice capture parameters in supported invoice types the cost invoice has to be set to “Vendor Invoice” if the invoices should be imported to ExFlow.

Navigate to Account payable | Setup | Invoice Capture
- Make sure that the supported invpice type "Cost invoice" is set to Vendor invoice.

![medium](@site/static/img/media/image550.png)

### Account payable parameters
Account payable | Setup | Account payable parameters

The standard setting “Automatically create invoice lines” has to be set to `YES` if invoices should be imported into ExFlow.

![medium](@site/static/img/media/image551.png)

### Setup ExFlow import method
ExFlow | Setup |Import methods

To support Import of invoices from Microsoft Invoice Capture a new Import Method has to be setup in ExFlow. 
- Select `New` and choose Import method “Microsoft Invoice Capture” and write a description.
- In Document handling the desired types for "Document type invoice" and "Document type attachment".

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image552.png)

- In the header menu select General and open “Import method of companies”.
- Select `New` and make sure to add the companies you want to import Invoice Capture invoices from.

![medium](@site/static/img/media/image553.png)