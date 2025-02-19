---
title: Post Control Rules
sidebar_position: 4
hide_title: true
custom_edit_url: null
---
## ExFlow Post Control Rules workflow 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

The objective of the ExFlow post-control rules in the workflow is to establish specific conditions for determining when an invoice should undergo post control.

Post control gives the accounts payable team the option to add an extra layer of quality assurance either before an invoice is routed for approval, or before the final posting takes place.
If the post control feature is activated in the general parameters, all invoices will be routed to post control. 

However, the workflow enhances flexibility by only routing the invoices that meets the defined conditions of the workflow.

### Select New Workflow
ExFlow | Setup | Workflows | Workflows

On the action pane click “+New”.
Select ExFlow post control rules Type as a workflow type and open the newly created workflow.

### Example Workflow V1 (old version)
ExFlow | Setup | Workflows | Workflows

- On the left side under Workflow elements find “Conditional decision” and drag it into the center between “Start” and “End” of the workflow. 
- Drag arrows from “Start” to “Conditional decision” and to a “True” and “False” to the “End” (figure 1).

![medium](@site/static/img/media/image419.png)

- To set a condition, double click on Exflow conditional decision 1 (figure 1). Then right click on the same box and choose “Properties”.
- The conditions might be defined by business needs. Ex: certain vendors need to be double checked before final posting. 

In this example we will set a condition where only invoices from vendor “00082” is routed to post control. 
- Give the condition a name, preferable a name that explains what the purpose of the condition (figure 2).

![medium](@site/static/img/media/image420.png)

- Define the condition(s) for when we want the invoice to be routed to post control. 

![medium](@site/static/img/media/image421.png)

- The finished workflow should look like this (figure 4):

![medium](@site/static/img/media/image422.png)

- Close and save the Workflow configurator. 

Exflow will now automatically route all invoices that meet the set conditions (Vendor = 00082) to post control. 

- Other possible business scenarios that can be built into the post control rules workflow: 
    - All invoices over a certain amount
    - Invoices with a specific “Invoice type”
    - Invoices with a foreign currency
    - Invoices with a specific pre-coding, such as main account or financial dimension
    - All invoices approved by a certain approver

### Example Workflow V2 (new version from ExFlow 2.14.)