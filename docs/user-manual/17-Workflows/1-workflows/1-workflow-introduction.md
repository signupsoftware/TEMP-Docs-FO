---
title: Workflow introduction
sidebar_position: 1
hide_title: true
custom_edit_url: null
---
## Workflow introduction 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow \| Setup \| Workflows

To set up workflows, follow the guidelines of standard D365 FO documentation and install the external tool to be able to add and modify workflows.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image79.png)

ExFlow supports several types of workflow rules to be configured. These workflow types can support the automated assignment of approvers, validating data - both provided on the invoice or by the approvers, automating actions based on entered data, etcetera.

|ExFlow Workflows| |
|:-|:-|
|ExFlow Approval Workflow Type| Defining all approval rules. Find approvers based on conditions, will always be validated unless manually adding approvers.|
|ExFlow action import workflow|The workflow supports changes before and after the invoice is imported. Values can be changed or updated depending on conditions, is used in ExFlow import form.|
|ExFlow action document workflow|The workflow supports changes after the invoice is posted. Values can be changed or updated depending on conditions. Can be used in ExFlow WEB and in ExFlow document form.|
|ExFlow post control rules|The workflow controls if transactions should be added to Post control form. Workflow should be activated if you want to separate e.g. specific vendor or main account to Post control.|
|ExFlow workflow for agreement approval|The workflow will support an approval process for Agreement activations.|
|ExFlow Validation exception type| Workflow is used for negative validation of values and changes in ExFlow web. E.g. stop approval for lines that have quantity differences or if a specific value are not allowed to be blank or not possible to post without coding. | 
|ExFlow validation allowed type|Workflow is used for validation of values and changes from ExFlow web.|
|ExFlow validation exception type| To set certain conditions for when an approver should not be able to approve an invoice.The workflow is used for negative validation of values and changes in ExFlow web. E.g. stop approval for lines that have quantity differences or if a specific value are not allowed to be blank.|
|ExFlow Move to company|Workflow will control if invoices will be moved between companies. A specific process that needs to be activated.|
|ExFlow import validation|Support invoice validation|
|ExFlow Workflow for Position Hierarchy choice|Has same function as advanced approval with only support for Position hierarchy. Recommended to use advanced approval instead.|
