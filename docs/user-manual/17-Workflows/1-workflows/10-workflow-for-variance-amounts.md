---
title: Workflow for variance amounts
sidebar_position: 10
hide_title: true
custom_edit_url: null
---
## Workflow for variance amounts 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

## Introduction
The solution is to add support in all relevant ExFlow workflow to control routing, actions or functionality based on the variance amount or percentage. As part of the solution and be able to keep the matching result easily viewable by AP operators instead of having to go into the posting dialog to find the information the variance amounts and tolerances is added in a new table connected to document line table.

## Description of the D365 process
In the standard vendor invoice approval workflow for invoice header and line, there is no support for variance amount and percentages.

### Setup of Variance Amounts
By integrating support for variance amounts and percentages, this functionality enhances the efficiency and automation of the vendor invoice approval process. Additionally, this allows Accounts Payable (AP) operators to easily access matching results without navigating through the posting dialog. 

The matching results are accessible from both import form and document form which gives the user a possibility to set up workflows based on the pre match of the invoice. For example, you can make a validation rule in the import validation workflow based on the total match variance in accounting, invoice or reporting currency and you can also suggest approver based on the variance.

![Table Description automatically generated with medium confidence](@site/static/img/media/image571.png)

:::info **Please note!** That the standard matching in D365FO handles both Charges and Discounts in a different way compared to ExFlow. That means it is of no use to setup workflow criteria for Charges variance or Total discount variance but you can still use these fields to see if there are any charges or discounts on the related Purchase order. Standard D365FO uses the Charges on purchases field on the purchase order line instead of looking at the Charges under Maintain charges and ExFlow handles the discounts in a different way compared to standard D365FO.
:::

### Setup signing limits
Organization administration \| Setup \| Signing limits \| Signing limit policies

A new signing limit type called “Variance amount” is created in the signing limit type provider to be defined against the jobs in the signing limits.

![medium](@site/static/img/media/image572.png)

### Advanced approval workflow
Exflow AP \| Setup \| Workflows \| Advanced workflow setup \| Advanced workflow position hierarchy mapping

To be able to support routing based on the difference amount instead of the invoice amount or invoice line amount a new hierarchy provider called “Variance hierarchy” is created. It can be setup in "Advanced workflow position hierarchy mapping";

https://docs.exflow.cloud/finance-operations/docs/user-manual/Workflows/advanced-workflow-setup/advanced-workflow-position-hierarchy-mapping

![Table Description automatically generated with medium confidence](@site/static/img/media/image573.png)

### Workflow conditions
Below conditions are also available with validation exception, validation allowed, Exflow post control rules V2, Exflow action import and Exflow action document workflows.

The below criteria’s is available in the approval step and in the conditional decision.

**Table matching variance table:**
- Charges variance amount in accounting currency
- Charges variance amount in invoice currency
- Charges variance amount in reporting currency
- Charges variance percentage
- Invoice amount variance amount in accounting currency
- Invoice amount variance amount in invoice currency
- Invoice amount variance amount in reporting currency
- Invoice amount variance percentage
- Sales tax variance amount in accounting currency
- Sales tax variance amount in invoice currency
- Sales tax variance amount in reporting currency
- Sales tax variance percentage
- Subtotal amount variance amount in accounting currency
- Subtotal amount variance amount in invoice currency
- Subtotal amount variance amount in reporting currency
- Subtotal amount variance percentage
- Total discount variance amount in accounting currency
- Total discount variance amount in invoice currency
- Total discount variance amount in reporting currency
- Total discount variance percentage

**Line matching variance table:**
- Charge price variance amount in accounting currency
- Charge price variance amount in invoice currency
- Charge price variance amount in reporting currency
- Charge price variance percentage
- Quantity variance
- Total price variance amount in accounting currency
- Total price variance amount in invoice currency
- Total price variance amount in reporting currency
- Total price variance percentage
- Unit price variance amount in accounting currency
- Unit price variance amount in invoice currency
- Unit price variance amount in reporting currency
- Unit price variance percentage

![Table Description automatically generated with medium confidence](@site/static/img/media/image573.png)

### New hierarchy provider 
To be able to support routing based on the difference amount instead of the invoice amount or invoice line amount a new hierarchy provider called “Variance hierarchy” should be created.
It should mimic the hierarchy provider with the difference that the stopping points should be Invoice variance amount, invoice variance amountmst, invoice line variance amount or invoice line variance amountmst. And the amount to be sent against the signing limits should be the variance amount (invoice or invoice line based on stop criteria). This will be achieved by creating a new signing limit type called “Variance amount” in the signing limit type provider to be defined against the jobs in the signing limits.

![medium](@site/static/img/media/image574.png)

### Example of Advanced approval workflow
If the sales tax variance is greater than 10% the approval route suggested is Reference -> Hierarchy, if less than 10% - only reference is suggested as an approver.

![medium](@site/static/img/media/image575.png)

![mini](@site/static/img/media/image576.png)

![medium](@site/static/img/media/image577.png)

![medium](@site/static/img/media/image578.png)