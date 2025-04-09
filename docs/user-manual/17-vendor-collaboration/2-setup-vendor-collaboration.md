---
title: Setup support for Vendor collaboration
sidebar_position: 2
hide_title: true
custom_edit_url: null
---
## Setup Vendor Collaboration 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

### Vendors
Accounts payable | Vendors | All vendors

Make sure the Vendor is activated for Vendor Collaboration.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image372.png)

If you would like the ExFlow invoice to always be sent out for approval even if it is matched when it comes through Vendor collaboration portal, make sure the parameter Vendor portal invoices must be approved is ticket to `Yes`.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image373.png)

### Users
Vendor collaboration | Contacts | vendor collaborations users 

If you want someone to have access to vendor collaboration, they first must be added as a vendor collaboration contact.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image374.png)

For more detailed description on how to set up contacts and users see Microsoft documentation.

https://learn.microsoft.com/en-us/dynamics365/supply-chain/procurement/manage-vendor-collaboration-users

Or this blog: 
Setup Vendor Collaboration portal access for existing vendors in Microsoft Dynamics 365 finance and operations: Part-1 – Explore Microsoft Dynamics 365 Finance and Operations Together (home.blog)

https://exploredynamics365.home.blog/2021/07/16/setup-vendor-collaboration-portal-access-for-existing-vendors-in-microsoft-dynamics-365-finance-and-operations-part-1/

### Setup Workflows
Accounts payable | Setup | Accounts payable workflows

Below workflows need to be set up under Accounts payable workflows.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image375.png)

### Setup Import methods
Exflow | Setup | Import methods

To be able to import the invoices that are sent from Vendor collaboration portal to ExFlow you need to set up an Import method.

- Go to ExFlow Import methods.
- Create and enable an import method for Vendor portal. 

For more detailed description on how to create an import method see: https://docs.signupsoftware.com/finance-operations/docs/user-manual/import-methods/setup-import-methods

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image376.png)

Tick the parameter "Allow import without invoice image" to `Yes` if you want ExFlow to generate an invoice PDF attachment automatically if the Vendor doesn’t attach one. 

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image377.png)

You will also need to specify which companies should be able to import invoices from the portal.

- Go to General > Import method configuration of companies.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image378.png)

Select any of below options:
All = Activate for all legal entities.

Table = Specify specific legal entities.

Group = Company group.

![small](@site/static/img/media/image379.png)

### PDF web service
Setup ExFlow “PDF web service” under General parameters if not already done.

URL - https://pdfconverter.exflow.io

Password: request from SignUp Software

Port: 443

Use IP address: `NO`

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image380.png)



