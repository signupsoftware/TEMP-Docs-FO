---
title: Setup and work with post control
sidebar_position: 2
hide_title: true
---
## Introduction <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

This function gives the accounts payable team the option to add an extra layer of quality assurance either before an invoice is routed for approval, or before the final posting takes place. 

The typical usage of this function is, a company has set up batch posting of invoices and the approvers are the persons that set the coding on an invoice, and the accounting department still would like to double-check the accounts, project, fixed assets, or dimension values used before the invoice is finally posted. 

The invoices are approved in a new form called ‘Post control’ and is similar to the ExFlow ‘Document’ form.

Changes made to Post Control setup (parameters) will not be affected on already imported invoices.

### Parameters
ExFlow | Setup | Parameters | Approval | Post Control

![Large](@site/static/img/media/image447.png)


|Parameters| Description |
|:-|:-|
|None |Post control is not active|
|Enable old version | Activate the old post control functionality before Exflow update 2.14.|
| Enable new version | Activate the new post control functionality from Exflow version 2.14. Changes in logic and added conditions to setup post control rules if e.g. an approver changes main accounts. (Recommended to use)|
| Enable cost invoices | Include cost invoices for post control workflow|
| Enable PO invoices | Include purchase order invoices for post control workflow|
|Time of post control check | This setting controls when the post control shall be triggered. **Invoice register posting**: Triggered after an invoice is invoice registered and sent out for approval. **Last invoice line to be approved**: Triggered after the invoice has been finally approved. **Both**: Triggered in both of the above scenarios. |
| Allow manual posting | If the user should be able to manually post an invoice via the invoice journal or manual posting of PO invoice from document form without first approving the invoice in post control|
| Allow manual posting, without post control |Allow fetch voucher in invoice approval journal or manual posting of puirchase order invoices from Exflow document form without need of post control|
| Allow corrections | Allow corrections in the post control form.|
| Require comment| This field is used to enable or disable the comment requirement at the time of the approval in post control form|


### Work with Post Control
There are two ways to access post control invoices

#### Post control form
ExFlow | Invoices | Post Control

One or several invoices may be marked and “Set as controlled” by using the button in the header. As long as an invoice has not been finally posted, the invoice can also be reversed to “Not controlled”
again. Once the invoice is set to controlled, the batch job can be used to post the invoice/s. Depending on the settings in the ExFlow parameters, the post control function can also be active when invoices
are manually posted in the invoice journal.

![Medium](@site/static/img/media/image448.png)

You find the detailed description of the buttons and fields in the introduction sections.

 #### Tile for post control in the Exflow vendor invoice management workspace

ExFlow | Workspaces | Exflow vendor invoice management

The tile is clickable and will show the result based on the filter set on the tile which is Post control invoices.

- The number on the tile shows the number of invoices in Post control 
- Clicking on the tile will navigate to the post control form.

![medium](@site/static/img/media/image449.png)

### Create post control workflows
ExFlow | Setup | Workflows | Workflow

It is possible to configure Post control to only apply for a certain range. E.g, there might be a special group of invoices that often needs manually adjustments by AP after approval, perhaps a specific vendor. ExFlow provides the possibility to flexibly configure the range via a workflow.

#### Create new workflow

1. Mark the post control workflow you want to use 

- ExFlow post control rules - Old workflow before Exflow version 2.14.
- ExFlow post control rules V2 - Workflow from ExFlow version 2.14. Bigger changes in logic and added conditions to setup post control rules if e.g. an approver changes main accounts.

*Recommended to setup V2, below instructions and pictures is from V2 workflow.*


![medium](@site/static/img/media/image450.png)

2. Setup the workflow as image below (Start -> Decision -> End)
3. Right click on the decision and go to properties. Create query for all invoices you want to end up in post control

![medium](@site/static/img/media/image451.png)



**Workflow exampels**

**Specific main account**

![medium](@site/static/img/media/image457.png)

**One specific vendor**

![medium](@site/static/img/media/image452.png)

**Multiple vendors**

![medium](@site/static/img/media/image453.png)

**Confidential invoices**

![medium](@site/static/img/media/image454.png)

**Invoices with quatity variance**

![medium](@site/static/img/media/image455.png)

**Unit price variance amount bigger than 10**

![medium](@site/static/img/media/image456.png)

**Change in main account**

![medium](@site/static/img/media/image458.png)