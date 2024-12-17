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


### Change to the Direct posting process

#### Purpose
Main purpose of this development was to get away from the arrival registration of invoices and give the customers an opportunity to choose which process they want to use. And to add a little extra edge to this, we also wanted to make it easier for accounting staff to manage the invoice process through ExFlow.

**Note:** The user interface and process will be the same as for invoice register process. It is only technical changes in the background.

**Invoice register process**
Invoice register posting holds data that you need to take into consideration at final posting. 
Immediately effect on general ledger and vendor balance accounts.
Sales tax are deducted at invoice register posting and can be reported to local tax authorities.
Invoice matching against purchase orders is made with net amount postings.

**Direct posting process**
No invoice register means that the data can be changed all the way until final posting and full support for pending invoice process which MS is targeting for all new features. 
Sales tax is not deducted until final posting although you can a use preliminary sales tax all the way until final posting. No effect in GL/Submodules etc. for invoice and sales tax until final posting.

**Market and Target group**
- Mainly for US market and new customers who don´t want to use the arrival registration process.
- To avoid problems with VAT on two occasions.

#### Prerequisites 
-	Supported from ExFlow version 2.16.0.
-	Setup 2 journals, one for temporary journals and one for invoice journal.	
        Type: Vendor invoice recording
        App Journal – not include sales tax
-	Activate feature in ExFlow AP – Parameters – Posting logic – Direct posting. 
        Approved by: is mandatory to set for the direct posting process
-	Sales tax handling.
        Scanned tax – tax on invoice
        Calculated tax on lines shall sum up to the sum of scanned tax amount
-	If needed, activate batch jobs for delete temporary journals separately. See below description in parameters.
-	For customers that already runs ExFlow in the Invoice register process it is very important to empty and handle the open transactions. See more information below under upgrade information.

#### Limitations
**The following features are not supported in this version:**
- ExFlow Analytics (Power BI)
- Cross company views from ExFlow workspace
- Prepayment/auto settlement functionality
- Support for external tax engines, e.g. Wolter Kluwer’s CCH SureTax
- India Sales Tax and localization
- Vendor statement reconciliation
- PO re-connect

Post and transfer button from approval journal is hidden, due to redesign of functionality.

#### Upgrade information – How to change the process
If the customer needs to change the from the invoice registration process to the direct posting process.  Make sure that below steps are followed;
-	Analyze
        Supported from ExFlow version 2.16.0
        Analyze the process, check if the customer really needed to do the change.
        Changing the process can be compared to changing the ERP system.
        Activation of the process can be done per company (possible to run both processes cross legal entities)
        You cannot switch back!!

-	Before Switch to the new process - Changing the process can be compared to changing the ERP system. So below need to be followed;
        ExFlow needs to be empty, all transactions need to be handled (All invoices in status invoices or cancelled in document form).
        Script available if needed for bigger companies, to move unposted invoices from import form back to import history.
        Do the changes in test and uat;
        Set the parameters
        Don´t forget to do the end to end tests of the process.
        When ok, migrate the changes to production.

