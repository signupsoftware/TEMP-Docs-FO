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

**Invoice register process**
- Invoice register posting holds data that you need to take into consideration at final posting.
- Immediately effect on general ledger and vendor balance accounts.
- Sales tax are deducted at invoice register posting and can be reported to local tax authorities.
- Invoice matching against purchase orders is made with net amount postings.

**Direct posting process**
- No invoice register, means that the data can be changed all the way until final posting and full support for pending invoice process which MS is targeting for all new features.
- Sales tax is not deducted until final posting, although you can use the captured sales tax from the invoice all the way until final posting.
- No effect in GL/Submodules etc. for invoice and sales tax until final posting.

**Market and Target group**
- Mainly for US market and new customers who don´t want to use the arrival registration process.
- To avoid problems with VAT on two occasions.

### Direct Posting Setup in ExFlow
1. **Prerequisites**
- **ExFlow version:** Supported from v2.16.0.
- **Activate Direct Posting:**
    - Navigate to ExFlow AP - Parameters - Posting logic - Direct posting
    - Enable "Direct posting".

2. **Mandatory settings**
- **Approved by:**
    - Must be set for the Direct Posting process.
    - Defaults from “Default approved by” in Posting logic section of ExFlow parameters.
- **Enable Tax Calculation Framework:**
    - Go to Sales tax section in ExFlow parameters.
    - Enable “Tax calculation framework”.

3. **Choose Setup Option**
**Option 1: Net Amount + Scanned Sales Tax (Default Setup)**
- **Invoice Line Handling:**
    - Net amount on lines.
    - Sales tax is scanned/received from invoice header.
    - Calculated tax on lines shall sum up to the sum of scanned tax amount.
- **Journal Setup:**
    - Create 2 journals:
    - Temporary journal
    - Invoice journal
        - **Journal type:** Vendor invoice recording
        - **Sales tax:** **DO NOT** include sales tax
-  **Additional Parameter Settings:**
    - Enable **“Adjust VAT in Invoice journal”** (Sales tax section)
        - Set tolerance values to auto-allocate VAT differences.
    - Enable **“Validate sales tax difference at posting”** (Posting logic section).
    - (Optional) Enable **“Validate tax difference before send out for approval”**
        - This is optional, if validation should already happen in the ExFlow import form.<br/>

**Option 2: Gross Amount + No Scanned Sales Tax**
- **Invoice Line Handling:**
    - Gross amount on lines.
    - Do not scan or receive sales tax from invoice header.
- **Journal Setup:**
    - Create 2 journals:
        - Temporary journal
        - Invoice journal
    - **Journal type:** Vendor invoice recording
    - **Sales tax:** Amounts include sales tax
- **Parameter Settings:**
    - **Disable** “Adjust VAT in Invoice journal”
    - **Disable** “Validate sales tax difference at posting”

4. **Additional Configuration**
- **Batch Jobs:**
    - (If needed) Activate batch jobs to delete temporary journals.
    - See description in Parameters for setup.
- **Upgrade Note** (for existing Invoice Register users):
    - Important: **Empty and manage open transactions** before activating Direct Posting.
    - See upgrade section for full details.


### Limitations
**The following features are not supported in this version:**
- ExFlow Analytics (Power BI).
- Cross company views from ExFlow workspace.
- Prepayment/auto settlement functionality.
- Support for external tax engines, e.g. Wolter Kluwer’s CCH SureTax.
- India Sales Tax and localization.
- Vendor statement reconciliation.
- PO re-connect app. (deprecated)
- Project operations.
- Document summarize and Split and validate functionality.

Post and transfer button from approval journal is hidden, due to redesign of functionality.

### Upgrade information – How to change the process
If the customer needs to change the from the invoice registration process to the direct posting process.  Make sure that below steps are followed;<br/>
-	Analyze
    - Supported from ExFlow version 2.16.0
    - Analyze the process, check if the customer really needed to do the change.
    - Changing the process can be compared to changing the ERP system.
    - Activation of the process can be done per company (possible to run both processes cross legal entities).
    - **You cannot switch back!!**

-	Before Switch to the new process - Changing the process can be compared to changing the ERP system. So below need to be followed;
    - ExFlow needs to be empty, all transactions need to be handled (All invoices in status invoices or cancelled in document form).
    - Script available if needed for bigger companies, to move unposted invoices from import form back to import history.
    - Do the changes in test and uat.
    - Set the parameters.
    - Don´t forget to do the end to end tests of the process.
    - When ok, migrate the changes to production.

### Parameters

![large](@site/static/img/media/image621.png)<br/>

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

### Description of the functionality

#### The Process
**Import and post invoices**
- Connected to temporary invoice journal. Validate invoice number, payment id, amounts etc.
- No posting in general ledger, all information kept inside Exflow.
- Send out for approval of cost and if non-po, code the invoice.
- User approve the invoice from ExFlow web or from my vendor invoices.<br/>

**Document form**
- Invoice is visible with document number and not voucher number.
- No invoice journal is connected – it is a temporary hidden journal. And we keep the data in there as long as the invoice is not approved and final posted.<br/> 
(can be viewed from invoice journal form) AP – invoices – invoice journal – the journal Is visible or from Or from Exflow – invoice journal - Show temporary journals.
- In temporary journal - No offset, no lines.
- When invoice is approved –> Final posting process.<br/>

**Final posting**
- AP do the final posting – By using Invoice journal instead of approval journal or run the posting via batch job for final posting.
- In the background we copy all data from the temporary journal into the invoice journal and then deletes the temporary journal after post.
- Inquiries and voucher – Voucher number is now set.
- Transaction is posted in General ledger, and document form shows the document number and voucher number.<br/>

**Accrual journal changes**
- Possibility to follow up incoming costs.
- We take out the data from import form and document form.<br/>

![Table Description automatically generated](@site/static/img/media/image622.png)

### Other changes in the process
#### New workspace 
The ExFlow vendor invoice management workspace is redesigned and it is now possible to use actions.<br/>

![Table Description automatically generated](@site/static/img/media/image623.png)

#### Less columns as default
To make it easier for the AP personnel to work we have decreased the amount of default visible columns in import and document form.<br/> 

![Table Description automatically generated](@site/static/img/media/image624.png)

:::info **Questions and Answers:** https://docs.signupsoftware.com/finance-operations/docs/user-manual/faq/direct-posting
:::