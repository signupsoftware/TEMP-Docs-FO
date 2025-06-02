---
title: Italy for direct posting process
sidebar_position: 6   
hide_title: true
custom_edit_url: null
---
## Italy <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

### Description
This document describes the set up and the process for ExFlow AP Italy.
Italy has requirements for being able to post vendor invoices to different tax books. In D365FO the connection to the tax book is done through number sequences, that are connected to each tax book.
There are two ways for handling vendor invoices, one for purchase order invoices and one for cost invoices. For invoices connected to purchase orders the number sequence is retrieved from the purchase order. Any changes to the number sequence are made to the purchase order.<br/>
For cost invoices the number sequence is connected to the invoice journal.<br/>
To ensure the correct tax book is used, the correct journal needs to be chosen (as per the D365FO process for number sequences and journals).


### Prerequisite
For Italy the Direct posting process needs to be used. Please navigate to 
ExFlow Documentation Platform\| Get started\| Upgrade information for more information on the setup of Direct posting.

https://docs.signupsoftware.com/finance-operations/docs/user-manual/get-started/upgrade-information

### Setup
Exflow\| Setup\| Parameters\| Posting logic<br/>
- Start with the parameter setup. <br/>
For more information please Please navigate to ExFlow Documentation Platform\|Get started\|Upgrade information for more information on the setup of Direct posting.<br/>

https://docs.signupsoftware.com/finance-operations/docs/user-manual/get-started/upgrade-information

---
|Parameter | Description |
|--- | ---------|
|Default approved by | Is mandatory to set for the direct posting process.|
|Temporary invoice journal | Journal name for temporary vendor invoice journal. In this journal all information about the transaction is kept until the invoice is posted.| 
|Invoice Journal | Vendor invoice journal name.|
|Validation type| Only used for validation of the *temporary journal*.<br/>**ExFlow:** Only ExFlow related data is validated.<br/>**Journal header:** ExFlow related data together with data from the journal is validated (recommended setup).<br/>**Total:** Beside ExFlow related data and journal header data all invoice lines registered in ExFlow are created in the journal and are validated one by one. (warning, if many lines this could affect performance)| 
|Ledger dimension for validation |Only used for validation of the *temporary journal*. Validates the journal against std D365 FO validation on main account/financial dimension. Only used if the Validation type is set to Journal header or Total. |
|Validate sales tax difference at posting| Validates the actual sales tax amount in the final posting with the scanned tax amount on the header.|
|Maximum number of invoices per journal | If 0 (zero) no split of invoices will occur when running cost invoices in batch. If for example 100 here, the journal will be split into journals with 100 invoices each. Used only if performance issues occur when having a large sum of invoices to process each time.|
|Delete temporary journals separately|When set to yes, the temporary journal isn’t deleted directly after posting. Instead, a batch job can be set up to perform this action. Found under periodic tasks – Clean up – Delete temporary journals separately.|

### Process cost invoices
ExFlow\| Invoices\| Import form expense

**1. Import the invoice**
    - Checking the invoice header, code, set approvers i.e
    - Check the journal to be used for posting the invoice.
    - It is possible to set a default invoice journal in the vendor master data that will give the invoice journal, or you are able to pick the invoice journal manually.
    - Post the invoice through batch or manually.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image694.png)

![small](@site/static/img/media/image695.png)

**In the vendor master data:**<br/>
![Graphical user interface, application Description automatically generated](@site/static/img/media/image696.png)

**2. ExFlow document form**<br/>
ExFlow\| Invoices\| Document form expense
- In the Document form you monitor the invoice. You also have the possibility to change the invoice journal if needed.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image697.png)

![small](@site/static/img/media/image698.png)

**3. Final posting**<br/>
ExFlow\| Periodic tasks\| Post\| Final Posting\| Cost account invoices<br/>
- When the invoice is approved the final posting is made by batch or manually and the accounting is updated. Once the invoice is approved it is no longer possible to change the journal and by that the number sequence is no longer possible to change.

### Process Purchase order invoices
ExFlow\| Invoices\| Import form purch

**1. Import the invoice**<br/>
    - Checking the invoice header, checking matching or adding information from the PO manually-
    - The correct number sequence is provided from the purchase order.
    - A default number sequence is possible to add in the vendor master data that will be inherited to the purchase order.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image699.png)

![small](@site/static/img/media/image700.png)

**In the vendor master data:**<br/>
![Graphical user interface, application Description automatically generated](@site/static/img/media/image701.png)

**2. ExFlow document form**<br/>
ExFlow\| Invoices\| Document form purch<br/>
- In the Document form you monitor the invoice. If discovered that the number sequence is incorrect, it needs to be changed on the PO.

**3. Final posting**
ExFlow\| Periodic tasks\| Post\| Final Posting\| Purchase order invoices<br/>
- When the invoice is approved the final posting is made by batch or manually and the accounting is updated. Once the invoice is approved it is no longer possible to change the journal and by that the number sequence is no longer possible to change.<br/>