---
title: News    
sidebar_position: 1
hide_title: true
custom_edit_url: null
---


# Release ExFlow 2.16.1 <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>
Released in January 2025, see more information about the details 
under "Release notes".

https://docs.exflow.cloud/finance-operations/docs/user-manual/whats-new-and-planned/release-notes

____________________________________________________________________________________________________

## Major Release 2.16.0
A new version of ExFlow AP for Microsoft Dynamics 365 for Finance and Operations has been released as of December 2024.<br/>
This document outlines the key enhancements, corrections, and improvements featured in this major update. This release includes our new subscription module, released in ExFlow AP 2.14, enabling users to conveniently purchase functionality subscriptions directly from the Azure Marketplace.<br/>

**Release topics!**<br/>
### Direct postings
We have added support in ExFlow AP to post invoices directly against Pending Vendor Invoices and Invoice Journal. This removes the pre-requirement to setup and work with the invoice register process inside F&O.<br/>

:::info See more detailed information;<br/>
https://docs.exflow.cloud/finance-operations/docs/user-manual/get-started/upgrade-information
:::

### TMS Freight Bill
We have added support for Freight invoices that can be processed through Transportation Management.<br/>
**TMS is dependent on the new Direct posting functionality**.<br/>

### Procurement categories – matching tolerances
We have extended the matching tolerances that exists in F&O and added tolerances when working with Procurement Categories like the ones that exists for Items.<br/>

https://docs.exflow.cloud/finance-operations/docs/user-manual/whats-new-and-planned/release-notes<br/>
_________________________________________________________________________________________________

## Release ExFlow 2.15.4

Released in October 2024, see more information about the details 
under "Release notes".

https://docs.exflow.cloud/finance-operations/docs/user-manual/whats-new-and-planned/release-notes
______________________________________________________________________

## Release ExFlow 2.15.1
Released in July 2024, see more information about the details under "Release notes".

https://docs.exflow.cloud/finance-operations/docs/user-manual/whats-new-and-planned/release-notes
_____________________________________________________________________________________________________

## Major Release ExFlow 2.15.0
A new version of ExFlow for Microsoft Dynamics 365 for Finance and Operations has been released as of June 2024.

This document outlines the key enhancements, corrections, and improvements featured in this major update. This release includes our new subscription module, released in ExFlow 2.14, enabling users to conveniently purchase functionality subscriptions directly from the Azure Marketplace.

**Release topics!**
### Sales tax handling
30034 We have made a framework on how and when line tax calculations in ExFlow lines are being performed. Calculations can now be performed both based on request and/or immediately as before. All amounts and values received from the calculations are now stored for later use.

**Note: The values presented on the header in Import form is not affected by this change.** 
The framework is only affecting the tax values on lines in ExFlow. It does not affect the posted values at Invoice register or Invoice approval.

36134 Based on the above framework for line tax we have also introduced support for Tax Calculation Service.

**Note: In this version it’s not supported with:**
-	Multiple VAT numbers 
-	Currency exchange types
-	Certain Use Tax and reverse charge scenarios
-	Override sales tax

38603 The framework contains a pre-defined list of fields that should trigger tax calculations, but it is also adjustable with a setup called Tax calculation influence fields.

### Vendor Balance Statement
35002	We have added a new functionality to manage import and reconciliation of Vendor statements. This functionality is controlled by our subscription module mentioned in the introduction text. 

### Workflows
As part of the release, we have made several changes and added more fields to use in the workflow conditions.

20275 We have added the invoice line amount in the accounting and reporting currencies to all workflows.

23315 We have made it possible in the Import validation workflow to compare dates with a relative comparison such as is on or before.

30414 We have added a new position hierarchy that makes it possible to create positions and assign it to User groups and Security roles. The change also includes a new possibility to configure a financial dimension owner as an ExFlow owner which can include Workers, User group or Security roles.

### Approval object and Advanced workflow
35714 We have redesigned how the rules and settings for the advanced workflow are being configured, evaluated and executed. 
This also required us to rebuild major parts of how the approval logic from ExFlow Web and My Vendor Invoices is being performed.

**The new logic is restricted to a new feature parameter named Approver workflow, located at ExFlow AP-> General parameters -> Feature management.**

26889 We have rebuilt the job Auto match invoice on arrival of goods. The new version of the job is dependent on 35714.

**The new position hierarchy is only available in ExFlow.**

35488 We have added the invoice amount in the accounting currency to ExFlow Advance Approval Workflow Type and the ExFlow post control rules V2.

35610 We have added the Project Group for the project on the connected purchase order line to all workflows.

*See more information about the details for 2.15.0.
under "Release notes".**
https://docs.exflow.cloud/finance-operations/docs/user-manual/whats-new-and-planned/release-notes

______________________________________________________

## Release ExFlow 2.14.2
Released in March 2024, see more information about the details 
under "Release notes".

https://docs.exflow.cloud/finance-operations/docs/user-manual/whats-new-and-planned/release-notes
______________________________________________________________________

## Release ExFlow 2.14.1
Released in february 2024, see more information about the details 
under "Release notes".

https://docs.exflow.cloud/finance-operations/docs/user-manual/whats-new-and-planned/release-notes

______________________________________________________________________
## Major Release ExFlow 2.14
**Release Topics:**
### 28037 Auto create debit and credit invoices
We have added a new functionality that automates the creation of both debit and credit invoices for previously posted invoices. This enhancement streamlines the correction process for erroneous postings in cost invoices, providing a more efficient management solution.

### 34514 Support for Po matching detalis and variance amounts
It is now possible to view the detailed matching results in ExFlow. These results are stored for versatile use in all workflows. Additionally, within this feature, the signing limit concept has been extended to allow the specification of different signing limits for variance amounts.

### 33652 Possible to set the posting date based on specific business needs
We have enhanced configurability by enabling users to set the posting date based on specific business needs. This update offers greater flexibility in tailoring the system to align with individual business requirements.

### 7511 Post control when coding is changed
The ExFlow Post Control rules v2 workflow can now be configured to halt only when there is a change in coding.

**Please Note;**
If using the Post control functionality, you need to check the section for post control parameters after update to 2.14.0. 
In the new update there are separate sliders for including cost invoices or invoices connected to purchase order invoices.

**See more details in section** https://docs.exflow.cloud/finance-operations/docs/user-manual/post-control/setup-and-work-with-post-control

Before update
![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image548.png)

After update
![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image549.png)


### Workflows
As part of the release, we have made several changes and added more fields to use in the workflow conditions.
- Purchase Requisition preparer .
- Number of unique approvers.
- Project Contract Id.
- EXF_tDocumentLineApprovers.ApprovedBy, has been added to multiple workflows where it was previously unavailable.
- Approval status from the Purchase Order .
- Number of attachments.
- The field Line reference on line level.
- The remaining inventory dimensions have been added across all workflows.

### 29411 Summarize lines now in My Vendor Invoices.
We have extended the feature to work with summarize lines to now include availability in My Vendor Invoices.

### 32916 Balance field in document form
A new balance field has been introduced on the invoice header in the ExFlow Document Form.

### 32454 invoice images in the payment journal
The capability to view invoice images in the payment journal has been extended to include functionality within centralized payments.

### 12072 AI flashlight image
The AI flashlight image has been moved to the header pane from the lines, and replaced the image

### 34288 import charges from Invoice Capture
We have added functionality to import charges from Invoice Capture if they have been interpreted.

**See more information about the details for 2.14.0.
under "Release notes".**
https://docs.exflow.cloud/finance-operations/docs/user-manual/whats-new-and-planned/release-notes

__________________________________________________________________

## Patch Release ExFlow 2.13.4 
Released in december 2023, see more information about the details 
under "Release notes".

https://docs.exflow.cloud/finance-operations/docs/user-manual/whats-new-and-planned/release-notes

_________________________________________________________________
## Patch release ExFlow 2.13.1
Released august 15, see more information about the details 
under "Release notes".

https://docs.exflow.cloud/finance-operations/docs/user-manual/whats-new-and-planned/release-notes

_________________________________________________________________

## Major Release ExFlow 2.13 
Release date June 7

# Release Topics:
### 19774 - Invoice timeline
We have added a new function called Invoice timeline to follow how the invoices have been processed in the system.


### 30248 - Global reference.
We have introduced a new function to handle references on a global level across legal entities and with a legal entity override. The functionality also includes a possibility to assign a reference against a Worker, ExFlow User Group, ExFlow Security roles and Position.

### 30650 - Vendor portal support.
We have added support for Vendor portal in combination with ExFlow. You are now able to import invoices from the Vendor portal to ExFlow and let ExFlow handle the approval process. 

**Note! minimum version of ExFlow Web 2023.5.0.2 required**.


### 14195 - Posting proposal advanced re-design 2023.R1

6794 - We have added functionality to work with fixed amounts and marking a posting proposal for credit invoices in Posting proposal advanced.

10439 - We have added the line reference as a selectable field in Posting proposal advanced.

11664 - Posting Proposal copy default tax groups from vendor / main account. Defaulting of sales tax will now be applied when applying a posting proposal.

14081 -  We have added the possibility to search and filter on the vendor’s name in Advanced posting proposal.


### 28886 - We have extended the functionality around extended search 
It’s now also possible to filter on the extended search result.

### 27075 - Support added for Microsoft Invoice Capture.
New Import method added for Microsoft Invoice Capture.

### 30947 - Multi select Assign To on behalf off.
We have made it possible to assign invoices to other users in ExFlow Import Form than yourself.

- New menu item in Import form all - So it can be controlled by sec roles.
- Multi select of invoices.
- Assign to worker with same selection of users as within the action workflow.

### 25786 - We have renamed the tab Option in Import form to Manage
Label change

### 30061 - Exflow Web elements - PO line quantity configurable.
New parameter added -> Web setup -> “Send inv. Remainder qty.  
We have added a parameter to configure which Purchase order line quantity should be shown on the invoice line in ExFlow web. Default will be ordered quantity but now you can also select invoice remainder quantity.

### 21498 - We have extended the support for Project operations

### 28721 - Add support for Ledger account alias in ExFlow web.
In MSD365 you can add alias for quick coding like "i", and you get automatically account 132100. This std feature should be great to support from ExFlow web.
