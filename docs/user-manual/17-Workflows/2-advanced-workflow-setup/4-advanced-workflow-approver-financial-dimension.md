---
title: Advanced workflow approver on financial dimension
sidebar_position: 4
hide_title: true
---
## Advanced workflow approver on financial dimension <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

ExFlow \| Setup \| Workflows \| Advanced workflow setup \| Advanced workflow approver on financial dimension

The advanced workflow approver on financial dimension provides the possibility to set owners of certain coding strings. This owner/approver can then be referenced to in advanced approval workflow, i.e., assigning approvers based on the coding of the invoice line.
 
Clicking on the name of the coding structure, will enable you to maintain the segments and the values - the coding strings - of the coding structure.
 
**Limitations**
The functions is based on Account structure functionality, but will not interfere in the Account structure setup. It will not be possible to create an account structure in “Advanced workflow approver on financial dimension” and vice versa.


![Table Description automatically generated](@site/static/img/media/image83.png)


|Buttons (Action pane)|
|:-|:-|
|Edit|Allow adding and editing of structure.|
|New|Add a new coding structure.<br/>This will require you to enter name and description of the coding structure, as well as determine whether the structure should have main account as segment or not.|
|Delete|Delete the selected coding structure.|
|Duplicate|Create a copy of the selected coding structure.|
|Rename|Change the name of the selected coding structure|
|Activate|Activate the selected coding structure – structures that are not activated are not available for selection in advanced approver workflow|
|Validate|Validate the selected coding structure to ensure that the structure is valid|
|Cancel activation|De-activation of the selected coding structure|
|Approvers|When clicked, a new window will open, in which the owners/approvers for the coding structure are maintained|

|Fields / Headings|
|:-|:-|
|Name|Displays the name of the coding structure|
|Description|Displays the description of the coding structure|
|Status|Displays if the coding structure is in Draft or in Active status|
|Segments|Displays which coding segments have been added to the coding structure|

## Setup
Exflow | Setup | Workflows | Advanced workflow setup |

The structure is created and maintained in the function "Advanced workflow approver on financial dimension". Via the form the user can create and edit a structure.

### Process to create the structure

1. Create a structure and activate (possible to use entities to create/update values for the steps below)
- Create structure
- Add dimension
- Add values
- Add approvers
- Activate structure

2. Add a workflow step with Participant “Advanced workflow approver on financial dimension – [structure name]
- If a structure is deactivated, the Workflow step will use the last active structure setup before the structure becomes in draft status. 
- When Structure is re-activated, the workflow will use the structure in active status using any updates and new setup or value that is made on the structure.

### Create a coding structure
To create a new structure;
- Select `New` in the action menu.
- Name the structure and give it a description. 
- If you want to add main account as a column/segment mark main account to `Yes`. Please note that if you wish to create a rule which is intended to also apply to other line types than Ledger, leave the "Add main account" as disabled.  
- When structure is created, it will have status set to Draft. A draft structure will not be visible in the workflows and cannot be used.

![Table Description automatically generated](@site/static/img/media/image509.png)

*Figure 1 Create a coding structure*

When creating new or duplicating existing structure be aware that the name of the structure cannot be longer than 21 characters. If it's exceeded, you will get the error message. 

![Medium](@site/static/img/media/image510.png)

When trying to delete existing structure that is in use in ExFlow advanced approval workflow, error message will show. The message will direct the user in which workflow and version the structure is used, and the user cannot delete the structure until all the versions that uses this structure are deleted.

![Table Description automatically generated](@site/static/img/media/image511.png)

#### Create detailed segment
When the structure is created, it will not contain any financial dimensions - or segments - only main account if chosen at time of creation. 

Instead, segments are manually added after creation of the structure.  Once the segments have been added, you select the values of each segment - the dimension combination. Both individual values, multiple values, ranges and wildcards are allowed when configuring the segment values. 

A validation on line level will be performed and duplicate/conflicting entries will not be allowed. The recommendation is to only add segment that will be used for selection, there is no need to add the full account structure.

To add dimensions, select "Add segment" and mark the dimension that you want to use.

![Large](@site/static/img/media/image512.png)
*Figure 2 Add segment to a coding structure*

![Table Description automatically generated](@site/static/img/media/image513.png)
*Figure 3 Add values to segment*


#### Add approver to segment line
For each configured dimension combination, approvers/or owners - must be assigned.

To connect an approver to a segment line;
- Select the button "Approvers" (figure 4). In the stucture form, several approvers can be added per segment line.
- In the area "Dimension combination owner", one or more global approvers can be added. It gives possibility to set a fixed approvers list for certain dimensions or dimension combinations.  
- In the area "Legal entity overrides" it is possible to add an override from the global approver. You can only define one of the 3 fields as an owner (Owner, role/group or Position).
    - If no overrides are added in area "Legal entity overrides", this approver or list of approvers will be added in any company that uses this Coding structure. 

**NB: Signing limit is a mandatory field, but you may set it to 0.00. 
If set to 0.00, the signing limit derived from the applicable position hierarchy will apply. 
Please note! that signing limits derived from the applicable position hierarchy only when workflow is configured with reference to a position hierarchy.**


![Medium](@site/static/img/media/image514.png)
*Figure 4 Select "Approvers"*


|Button| Description|
| ---- | ---- |
| Show list (action pane)|Shows the list of segments.|
| Save (action pane)|Save the setup.|
| Fetch all dimension combination owners|If parameter is set to "Yes" then all owners or role/group will be fetched. When the field is set to "No", owners and role/groups will be fetched up to a specific signing limit.|
| Approval based on invoice header or line amount|Every financial dimension structure has a field "Invoice or invoice line amount" to determine which amount to be compared with. This field will be used when "Fetch all dimension combination owners" is set to "No" to fetch the owner list up to a specific signing limit.|
| Add line|To add new line of approvers. |
| Delete line |To delete the marked line. |
| Move up/Move down|To change the order that approvers will be fetched. The order will be used when "Fetch all dimension combination owners" is set to "Yes" and a list of dimension combination owner will be fetched in the order that is wanted.|
|Owner| Lookup for workers that can be added as an approver/owner for the segment.|
|Role/Group| Lookup for security roles and user groups that can be added as an approver.|
|Position| Lookup for positions that can be added as an approver.|
|Signing limits| Mandatory field to set the signing limits. If set to 0.00, the signing limit derived from the applicable position hierarchy will apply.|
|Currency| Currency for the signing limit|
|Legal entity| To specify the legal enity for overrides.|
| Name| Name of the legal entity.|


#### Activate the structure
- Before the structure can be used by the workflows, the structure needs to be activated. This can be done from the list page or the detailed form, select Activate. An activation will always be done via batch job.

![Large](@site/static/img/media/image515.png)
*Figure 5 Activation of stucture"*

### Change a coding structure
When there is a need to update or change a structure, go to "Advanced workflow approver on financial dimension", focus on the the relevant structure and select "Edit". During the updating of a structure, the last activated version will be applied in the workflow. This will be replaced when you activate the structure after making the desired changes. 

### Add structure to the workflow
The structure can only be used by the advanced approval workflow.

Within a step setup;
- Tab Assignment - Select "Assigment type" - "Participiant". 
- Go to tab "Role based".
- Start with "Type of participant" - select Advanced workflow participiant for Exflow.
- Participiant - select the structure that you created. If structure is not visible, the structure is not activated.
- Close and save the workflow.

![Medium](@site/static/img/media/image516.png)
*Figure 6 Add structure to workflows"*

**Tips:**
- Add a company name in the structure if they only should work in a specific company.
- If a structure is added in the workflow and is deactivated and updated, the step in the workflow will use the previous active dimension combination owners until the structure is activated again.
- If a structure should be removed, first remove it from workflow and after that deactivate the structure. 
A new "Start from" is added to hierarchy provider, it is called "Previous position":

#### Work with hierarchy based workflow and previous position
Previous position should work in combination with advanced workflow participant -> ExFlow financial dimension structure.
The active structure should have positions to work with the start from "Previous position".

- Tab Assignment - Select "Assigment type" - "Hierarchy". 
- Go to tab "Hierarchy selection".
- Start with "Hierarchy type" - select Exflow custom Hierarchy x. (Note that the hierarchy needs to be setup in "Advanced workflow position hierarchy mapping")
- Start from - select the provider you want workflow to start from e.g. previous position.
- Add stop conditions.
- Close and save the workflow.

![Medium](@site/static/img/media/image517.png)

### Entities 
From Exflow version 2.9.0, entities were introduced to simplify the creation and updating of structures and rules.

The entity is for create the structure. It’s only possible to update an structure if it has status Draft. When update an structure via Excel, and the status is active, the status will be changed to Draft.

**Following entities is possible to use, these must be run in a certain order to fully function:**
- ExFlow coding structure (unfiltered) - the structures and their segments.
- ExFlow dimension set - the segment values/the dimension combinations.
- ExFlow dimension combination owners - the owners/approvers.
- ExFlow dimension combination legal entity owners - the owners/approvers per legal entity if applicable.

![Large](@site/static/img/media/image518.png)


​​​​​
