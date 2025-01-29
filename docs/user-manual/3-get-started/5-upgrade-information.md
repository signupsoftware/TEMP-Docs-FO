---
title: Upgrade information
sidebar_position: 5
hide_title: true
custom_edit_url: null
---
## Upgrade information 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

### Upgrades
Request a new deployable or code package, consider Releases and License Keys. New releases might have new license management.

______________________________________________________________________________________________

## Change to the Direct posting process

#### Purpose
Main purpose of this development was to get away from the arrival registration of invoices and give the customers an opportunity to choose which process they want to use. And to add a little extra edge to this, we also wanted to make it easier for accounting staff to manage the invoice process through ExFlow.

:::info **Note:** The user interface and process will be the same as for invoice register process. It is only technical changes in the background.
:::

**Invoice register process**<br/>
Invoice register posting holds data that you need to take into consideration at final posting. <br/>
Immediately effect on general ledger and vendor balance accounts.<br/>
Sales tax are deducted at invoice register posting and can be reported to local tax authorities.<br/>
Invoice matching against purchase orders is made with net amount postings.<br/>

**Direct posting process**<br/>
No invoice register, means that the data can be changed all the way until final posting and full support for pending invoice process which MS is targeting for all new features.<br/>
Sales tax is not deducted until final posting, although you can use the captured sales tax from the invoice all the way until final posting.<br/>
No effect in GL/Submodules etc. for invoice and sales tax until final posting.<br/>

**Market and Target group**<br/>
- Mainly for US market and new customers who don´t want to use the arrival registration process.<br/>
- To avoid problems with VAT on two occasions.<br/>

### Prerequisites
-	Supported from ExFlow version 2.16.0.<br/>
-	Setup 2 journals, one for temporary journals and one for invoice journal.<br/>	
    - Type: Vendor invoice recording<br/>
    - App Journal – not include sales tax<br/>
-	Activate feature in ExFlow AP – Parameters – Posting logic – Direct posting.<br/>
    - Approved by: is mandatory to set for the direct posting process<br/>
-	Sales tax handling.<br/>
    - Scanned tax – tax on invoice<br/>
    - Calculated tax on lines shall sum up to the sum of scanned tax amount<br/>
-	If needed, activate batch jobs for delete temporary journals separately. See below description in parameters.<br/>
-	For customers that already runs ExFlow in the Invoice register process it is very important to empty and handle the open transactions. See more information below under upgrade information.<br/>

### Limitations
**The following features are not supported in this version:**<br/>
- ExFlow Analytics (Power BI)<br/>
- Cross company views from ExFlow workspace<br/>
- Prepayment/auto settlement functionality<br/>
- Support for external tax engines, e.g. Wolter Kluwer’s CCH SureTax<br/>
- India Sales Tax and localization<br/>
- Vendor statement reconciliation<br/>
- PO re-connect app<br/>
- Project operations<br/>

Post and transfer button from approval journal is hidden, due to redesign of functionality.<br/>

### Upgrade information – How to change the process
If the customer needs to change the from the invoice registration process to the direct posting process.  Make sure that below steps are followed;<br/>
-	Analyze<br/>
    - Supported from ExFlow version 2.16.0<br/>
    - Analyze the process, check if the customer really needed to do the change.<br/>
    - Changing the process can be compared to changing the ERP system.<br/>
    - Activation of the process can be done per company (possible to run both processes cross legal entities)<br/>
    - **You cannot switch back!!**<br/>

-	Before Switch to the new process - Changing the process can be compared to changing the ERP system. So below need to be followed;<br/>
    - ExFlow needs to be empty, all transactions need to be handled (All invoices in status invoices or cancelled in document form).<br/>
    - Script available if needed for bigger companies, to move unposted invoices from import form back to import history.<br/>
    - Do the changes in test and uat;<br/>
    - Set the parameters<br/>
    - Don´t forget to do the end to end tests of the process.<br/>
    - When ok, migrate the changes to production.<br/>

### Parameters

![medium](@site/static/img/media/image621.png)<br/>

---
|Parameter | Description |
|--- | ---------|
|Default approved by | Is mandatory to set for the direct posting process.|
|Post using invoice journal and pending invoice | Journal name for temporary vendor invoice journal. In this journal all information about the transaction is kept until the invoice is posted.| 
|Invoice Journal | Vendor invoice journal name.|
|Validation type| **ExFlow:** Only ExFlow related data is validated.<br/>**Journal header:** ExFlow related data together with data from the journal is validated.<br/>**Total:** Beside ExFlow related data and journal header data all invoice lines registered in ExFlow are created in the journal and are validated one by one. (warning, if many lines this could affect performance)| 
|Ledger dimension for validation | Used to be able to validate the journal since the journal needs a cost account to be validated. Only used for validation |
|Validate sales tax difference at posting| Validates the actual sales tax amount in the final posting with the scanned tax amount on the header.|
|Maximum number of invoices per journal | If 0 (zero) no split of invoices will occur when running cost invoices in batch. If for example 100 here, the journal will be split into journals with 100 invoices each. Used only if performance issues occur when having a large sum of invoices to process each time.|
|Delete temporary journals separately|When set to yes, the temporary journal isn’t deleted directly after posting. Instead, a batch job can be set up to perform this action. Found under periodic tasks – Clean up – Delete temporary journals separately.|

### Description of the functionality

#### The Process
**Import and post invoices**<br/>
•	Connected to temporary invoice journal. Validate invoice number, payment id, amounts etc.<br/>
•	No posting in general ledger, all information kept inside Exflow.<br/>
•	Send out for approval of cost and if non-po, code the invoice.<br/>
•	User approve the invoice from ExFlow web or from my vendor invoices.<br/>

**Document form**<br/>
•	Invoice is visible with document number and not voucher number.<br/>
•	No invoice journal is connected – it is a temporary hidden journal. And we keep the data in there as long as the invoice is not approved and final posted.<br/> 
(can be viewed from invoice journal form) AP – invoices – invoice journal – the journal Is visible or from Or from Exflow – invoice journal - Show temporary journals.<br/>
In temp journal - No offset, no lines.<br/>
•	When invoice is approved –> Final posting process.<br/>

**Final posting**<br/>
•	AP do the final posting – By using Invoice journal instead of approval journal or run the posting via batch job for final posting.<br/>
•	In the background we copy all data from the temporary journal into the invoice journal and then deletes the temporary journal after post.<br/>
•	Inquiries and voucher – Voucher number is now set.<br/>
•	Transaction is posted in General ledger, and document form shows the document number and voucher number.<br/>

**Accrual journal changes**<br/>
•	Possibility to follow up incoming costs.<br/>
•	We take out the data from import form and document form.<br/>

![Table Description automatically generated](@site/static/img/media/image622.png)

### Other changes in the process
#### New workspace 
The ExFlow vendor invoice management workspace is redesigned and it is now possible to use actions.<br/>

![Table Description automatically generated](@site/static/img/media/image623.png)


#### Less columns as default
To make it easier for the AP personnel to work we have decreased the amount of default visible columns in import and document form.<br/> 

![Table Description automatically generated](@site/static/img/media/image624.png)