---
title: Invoice payment workflow
sidebar_position: 11
hide_title: true
custom_edit_url: null
---
## Invoice payment workflow
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

### Introduction
In Belgium it is quite common to finally post the invoice to the General ledger and then send it out for approval. 
The workflow should be triggered during the final posting and stop the VendTrans.Approved flag to be set until the workflow has been run.<br/>
**When functionality is enabled, the ExFlow pre-payment functionality should be disabled.**

### Prerequisites
Payment workflow should be triggered based on Vendor and Invoice type.<br/>
It is possible to send out for approval at line or header details.<br/>
For approval on the invoice line level within the new workflow, the original ExFlow advanced approval workflow needs to be setup.<br/>
The approved flag on the vendor transaction should not be possible to mark as approved unless the Payment workflow has been finalized.

### Setup
#### ExFlow parameters
ExFlow AP \| Setup \| Parameters \| Tab; Prepayment and settlements<br/>
To activate the functionality - Enable the parameter for Payment workflow, must be enabled per legal entity.

![medium](@site/static/img/media/image712.png)

#### Setup for automatic postings
ExFlow AP \| Setup \| Resources \| Setup for automatic postings \| Tab; Payment workflow<br/>
Section for Payment workflow are visible when the functionality enabled.<br/> 
Configuration for Vendor is possible with Group/Table/All.<br/> 
Invoice type is possible for Both/Cost/Purchase invoice.

![medium](@site/static/img/media/image713.png)

### Workflow
#### **Invoice Payment Workflow**
The main workflow has the possibility to handle approval on header level.
The workflow should include the following options to route invoices on header level:<br/>

- Type of participiant: Invoice payment workflow participiant for ExFlow
- Participant
    - User Group participant
    - Security Role participant
    - Invoice Payment workflow participant
    - Responsible person 
    - Reference
    - Global reference
    - Invoice approvers (approvers taken from 1st invoice line)

![medium](@site/static/img/media/image714.png)

![medium](@site/static/img/media/image715.png)

- Hierarchy
    - Hierarchy type
        - ExFlow Position Hierarchy
        - Standard position Hierarchy
    - Start From
        - Global Reference
        - Last forwarded to
        - Orderer
        - Override approval set by
        - Post control made by
        - Previous approver
        - Previous position
        - Project controller
        - Project manager
        - Project sales manager
        - Reference
        - Requester
        - Previous Position
        - Responsible person
        - Workflow originator
        - Workflow owner

![medium](@site/static/img/media/image716.png)

### Action handling/Approve and Reject
ExFlow Invoice Payment Workflow has two actions Approve and Reject. When the invoice has been approved through ExFlow AP, the Invoice Payment workflow should be triggered when the Approved flag on the Vendor Transaction is being updated.<br/> 
The flag should not be possible to enable if the workflow is active for the transaction and only the workflow will enable the flag once it is approved.

There is a possibility to enable it when the Payment Workflow for some reason did not work but the approvers are added according to the setup. In vendor transactions ExFlow > Approve. The same button will set Approved flag back to `No`.

![large](@site/static/img/media/image717.png)

The mapping of position hierarchy should leverage the mapping of hierarchies that exists in ExFlow under<br/> ExFlow AP > Setup > Workflows > Approval workflow setup > Position hierarchy mapping

### Document form Payment
The new form for payment lists the documents that have been sent out through the new workflow.
When the invoice is open from the list page, the invoice is opened in the regular view for Document form, but with all fields locked.

![large](@site/static/img/media/image718.png)

### My vendor invoices workspace
A tile and subpage for the payment invoices added<br/>
When the invoice is open from the list page, the invoice is opened in the regular view for Document form, but with all fields locked.<br/>

![large](@site/static/img/media/image719.png)

![large](@site/static/img/media/image720.png)


### Security roles
The following security roles are extended with privileges:<br/>
**ExFlow purchase payable admin** - privilege to handle the new form Document form Payment and related actions in workflow for an admin user.<br/>
**ExFlow approver role** - privilege to handle the new selection in My vendor invoices form and related actions in workflow for an approver.<br/>


