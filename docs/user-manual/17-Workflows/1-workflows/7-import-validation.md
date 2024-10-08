---
title: Import Validation
sidebar_position: 7
hide_title: true
---
## ExFlow Import Validation <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

The purpose of the Import validation workflow is to give an opportunity to a user to set certain conditions for invoices and to be able to see what criteria´s that are not met by getting an error message during the invoice validation in the Import form.

## Setup
- Create a new workflow. - Navigate to Exflow | Setup | Workflows|Workflows. On the action pane click `New`.
- Select "Exflow import validation" as a workflow type and open the newly created workflow.
- On the left side under Workflow elements find “Exflow import validation” and drag it into the center between “Start” and “End” of the workflow. 
- Drag arrows from “Start” to “Exflow import validation” and to “End” (see below picture)
 
![Table Description automatically generated with medium confidence](@site/static/img/media/image501.png)

- In order to set a condition, double click on Exflow Import validation(see below picture). Then right click on the same box and choose “Properties”. 

![Table Description automatically generated with medium confidence](@site/static/img/media/image502.png)

### Workflow examples
The conditions is defined for user’s needs. For instance, the line type might be set in the condition as Fixed asset, ledger, or project. 

#### If linetype is Fixed asset
In the example we will set a condition under which the Validation error will appear if Import linetype is Fixed asset, and a certain condition is not fulfilled. In this case we want to get an error message if we import an invoice with a line type “Fixed asset” which is missing value for Book in the Coding fields. 

1. Assigment type - User, Select an D365 admin user.

![Table Description automatically generated with medium confidence](@site/static/img/media/image503.png)

2. Condition - Select the below conditions for the validation
Where: ImportLine.Record validation error-is-value-Yes
And: ImportLine.Linetype-is-value-Fixed asset
Then close the window. 

![Table Description automatically generated with medium confidence](@site/static/img/media/image504.png)

3. Save and close the workflow, add version note if needed, select ok and activate the workflow.

![Table Description automatically generated with medium confidence](@site/static/img/media/image505.png)


![Table Description automatically generated with medium confidence](@site/static/img/media/image506.png)

4. Trigger the created workflow and see how it works:

- Create and import an invoice, for example that will match against an posting proposal with a line twype “Fixed asset” and missing value for Book in the Coding fields.
- Find and open the invoice in the Import form and validate it. 
- Since Book does not have any value, the workflow will show us a validation error.
 
![Table Description automatically generated with medium confidence](@site/static/img/media/image507.png)

#### If linetype is Ledger or Project
For the next example, we will create a workflow with a Ledger linetype as a condition. During the validation an account structure will be checked, and a Validation error will appear if something in the structure is missing, for instance, value for CostCenter.

1. Navigate to the Exflow Import validation workflow and set a condition under which the Validation error will appear if Import line type is Ledger or if the costcenter is blank. 

![Table Description automatically generated with medium confidence](@site/static/img/media/image508.png)

2. Save and close the window. Activate the new version of this workflow as described in previous example.

3. Create and import an invoice with a line type Ledger. Fill in the financial dimensions, such as Ledger account, Description, Category, Department and Project, but leave the CostCenter blank.

4. Validate the invoice the Import validation workflow will be triggered and you will get an error message.
