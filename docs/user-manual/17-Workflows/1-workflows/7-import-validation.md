---
title: Import Validation
sidebar_position: 7
hide_title: true
custom_edit_url: null
---
## ExFlow Import Validation 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

The purpose of the Import validation workflow is to give an opportunity to a user to set certain conditions for invoices and to be able to see what criteria´s that are not met by getting an error message during the invoice validation in the Import form.

## Setup
- Create a new workflow. - Navigate to Exflow | Setup | Workflows|Workflows. On the action pane click `New`.
- Select "Exflow import validation" as a workflow type and open the newly created workflow.
- On the left side under Workflow elements find “Exflow import validation” and drag it into the center between “Start” and “End” of the workflow. 
- Drag arrows from “Start” to “Exflow import validation” and to “End” (see below picture)<br/>
 
![medium](@site/static/img/media/image501.png)

- In order to set a condition, double click on Exflow Import validation(see below picture). Then right click on the same box and choose “Properties”. 

![medium](@site/static/img/media/image502.png)

## Workflow examples
The conditions is defined for user’s needs. For instance, the linetype might be set in the condition as fixed asset, ledger, or project or where the actual sales tax in invoice header will be validated against Line total sales tax.

### If linetype is fixed asset
In the example below we will set a condition under which the validation error will appear if Import linetype is fixed asset, and a certain condition is not fulfilled. In this case we want to get an error message if we import an invoice with a linetype “Fixed asset” which is missing value for Book in the coding fields.<br/>

1. Assigment type - User, Select an D365 admin user.<br/>

![medium](@site/static/img/media/image503.png)

2. Condition - Select the below conditions for the validation<br/>
Where: ImportLine.Record validation error-is-value-Yes<br/>
And: ImportLine.Linetype-is-value-Fixed asset<br/>
Then close the window.<br/>

![medium](@site/static/img/media/image504.png)

3. Save and close the workflow, add version note if needed, select ok and activate the workflow.<br/>

![medium](@site/static/img/media/image505.png)


![medium](@site/static/img/media/image506.png)

4. Trigger the created workflow and see how it works:

- Create and import an invoice, for example that will match against an posting proposal with a line twype “Fixed asset” and missing value for Book in the Coding fields.<br/>
- Find and open the invoice in the Import form and validate it.<br/>
- Since Book does not have any value, the workflow will show us a validation error.<br/>
 
![medium](@site/static/img/media/image507.png)

### If linetype is ledger or project
For the next example, we will create a workflow with a ledger linetype as a condition. During the validation an account structure will be checked, and a validation error will appear if something in the structure is missing, for instance, value for cost center.<br/>
1. Navigate to the Exflow Import validation workflow and set a condition under which the validation error will appear if Import line type is Ledger or if the costcenter is blank.<br/>

![medium](@site/static/img/media/image508.png)

2. Save and close the window.<br/>
3. Activate the new version of this workflow as described in previous example.<br/>
4. Create and import an invoice with a line type Ledger. Fill in the financial dimensions, such as ledger account, description category, department and project, but leave the cost center blank.<br/>
5. Validate the invoice the Import validation workflow will be triggered and you will get an error message.<br/>

### Compare actual sales tax against line total sales tax
In the example below we will set up a condition where the actual sales tax will be validated against Line total sales tax.<br/>
Condition is included in Import validation, Action Import workflow and Action Document workflow. In this case we want to get an error message if line tax and actual tax has difference and not according to allowed different in workflow condition.<br/>

1. Assigment type - User, Select an D365 admin user.<br/>

![medium](@site/static/img/media/image602.png)

2. **Condition - Select the below conditions for the validation of zero amount in VAT difference.**<br/>
Where: Imports.VAT Difference = `Value`0
Then close the window.<br/>

![medium](@site/static/img/media/image603.png)

![medium](@site/static/img/media/image604.png)


**Condition - Select the below conditions for the validation of less than 100 in VAT difference.**<br/>
Where: Imports.VAT Difference &lt;= `Value` 100
Then close the window.<br/>

![medium](@site/static/img/media/image605.png)

**Condition - Select the below conditions for the validation of more than 100 in VAT difference.**<br/>
Where: Imports.VAT Difference >= `Value` 100
Then close the window.<br/>

![medium](@site/static/img/media/image606.png)

