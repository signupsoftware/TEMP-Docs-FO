---
title: Pay when paid
sidebar_position: 2
hide_title: true
custom_edit_url: null
---
## Setup Pay when paid in direct posting process
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

:::info **NOTE: This function is built to only support the direct posting process**
:::

## Pay When Paid with projects
### Introduction
Multiple customers are using ExFlow and leveraging the Pay When Paid (PWP) functionality, including enabling the PWP flag (set to "True") when invoices are posted. Once payment is received from the customer, vendor payments can then be released.<br/> 

ExFlow checks the Pay When Paid flag based on the vendor agreement setup on the project. No manual action is required from users within ExFlow, but during posting, it must be ensured that the project setup behaves the same way as the standard process.<br/> 

https://learn.microsoft.com/en-us/dynamics365/project-operations/prod-pma/setup-manage-vendor-payments

### Setup
Vendor agreement is added for the project. Specific vendor or vendor group can be selected.<br/>
Navigate to Project management and accounting | Projects | All projects.<br/>
Find and open the project that you want to set up PWP terms for.<br/>

![Graphical user interface, application Description automatically generated](@site/static/img/media/image732.png)

### Process
Cost invoice is imported to ExFlow and coded with the specific project, the invoice is then sent for approval and gets approved. Invoice is finally posted.<br/> 
Invoice is marked as Pay when paid.<br/>  

Possible to open through Project or Vendor:<br/> 

**Project:**<br/> 
![Graphical user interface, application Description automatically generated](@site/static/img/media/image733.png)

**Vendor:**<br/> 
![Graphical user interface, application Description automatically generated](@site/static/img/media/image734.png)

**Invoice is flagged as PWP:**<br/>
![Graphical user interface, application Description automatically generated](@site/static/img/media/image735.png)

**When creating vendor payment this invoice should have Amount to settle as 0:**<br/>
![Graphical user interface, application Description automatically generated](@site/static/img/media/image736.png)

**When vendor payment is released, amount to settle is populated:**<br/>
![Graphical user interface, application Description automatically generated](@site/static/img/media/image737.png)

![Graphical user interface, application Description automatically generated](@site/static/img/media/image738.png)