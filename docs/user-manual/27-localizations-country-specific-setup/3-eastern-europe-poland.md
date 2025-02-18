---
title: Eastern Europe (PL,CZ,HU,EE,LT,LV)
sidebar_position: 3 
hide_title: true
custom_edit_url: null
---
## Eastern Europe (PL,CZ,HU,EE,LT,LV) 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>


### Description
Managing VAT dates is essential for compliance with tax regulations. ExFlow supports the Date of VAT register and Date of Vendor VAT. Additionally, ExFlow offers functionality for service tariff number and receive document date.

#### Date of VAT Register
This date indicates when the VAT amount is deducted for a purchase. It is crucial for VAT reporting, ensuring that VAT is accounted for in the correct period. The Date of VAT Register is set during invoice posting and is used in various VAT reports to meet local tax requirements.

#### Date of Vendor VAT Register
This date defines the taxable supply date for a purchase. It facilitates accurate VAT reporting for purchases and is beneficial for postponed VAT deduction scenarios.

#### Receive document date
The received document date is important for VAT reporting and is used for various reporting purposes. When an invoice is received, it must be registered in the system with the actual date it was received.

#### Service tariff number
Is used to classify services for customs and VAT reporting purposes.

### Setup
ExFlow | Setup | Configuration | Dimension properties | Localizations<br/>

![Graphical user interface, application Description automatically generated](@site/static/img/media/image666.png)

| Description of parameters|
|:-|:-|
| Service tariff number | Enable this option if you want to include service tariff number.|
| Date of VAT register | Enable this option if you want to include the Date of VAT register.|
| Receive document date | Enable this option if you want to include receive document date.|

#### Date of VAT register
ExFlow | Setup | Parameters | Sales tax<br/>
To enable Date of VAT in ExFlow, you must first enable the feature in Standard D365FO.<br/>  
For more detailed information see Microsoft learn:<br/> 
https://learn.microsoft.com/en-us/dynamics365/finance/localizations/united-kingdom/emea-tax-point-date<br/> 

To use additional sales tax transactions, the Date of VAT Register must be enabled in ExFlow.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image667.png)

### Process
#### Import form
The captured Date of VAT Register will be set on the invoice header in Import form.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image668.png)

#### Invoice approval 
The Date of VAT Register will be included in the postings and carried over to the invoice approval.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image669.png)

#### Date of Vendor VAT Register
The captured Date of vendor VAT register will also be set on the invoice header – visible under General.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image670.png)

#### Document form
![Graphical user interface, application Description automatically generated](@site/static/img/media/image671.png)

#### Invoice approval
![Graphical user interface, application Description automatically generated](@site/static/img/media/image672.png)

