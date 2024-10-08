---
title: Workflow for agreement approval
sidebar_position: 4
hide_title: true
---
## Workflow for agreement approval <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

ExFlow | Setup | Workflows | Workflows

- Select "New" and choose workflow type "ExFlow workflow for agreement approval.
- Select Workflow – Hierarchy – Associate hierarchy and select the hierarchy that agreements workflow shall use. 
- Select OK


### Select New Workflow
Select ´New´ and choose workflow type ´ExFlow workflow for agreement approval´.

![Table Description automatically generated with medium confidence](@site/static/img/media/image39.png)


### Build the Workflow
ExFlow | Setup | Workflows | Workflows

Below example are setup for an approval flow: <br/>Responsible person – Manager for the responsible person – Automatically activate the agreement after approval.

![Table Description automatically generated with medium confidence](@site/static/img/media/image253.png)

**Step 1: Responsible person**<br/>
**Basic settings**: Enter name, subject and instructions.<br/>
**Assignment**: Select Participant – tab Role based – Select type as `Agreement workflow participant´ and participant as Responsible person.<br/>
**Condition**: Always run this step.<br/>

![Table Description automatically generated with medium confidence](@site/static/img/media/image254.png)

![Table Description automatically generated with medium confidence](@site/static/img/media/image255.png)

**Step 2: Manger from position hierarchy**<br/>
**Basic settings**: Enter name, subject and instructions.<br/>
**Assignment**: Select Hierarchy – tab Hierarchy selection – Select type ExFlow Agreement hierarchy and start from - Responsible person. <br/>Add stop condition: Where &lt;Employee.Line manager level&gt;= field &lt;Employee.Line manager level&gt;<br/>
**Condition**: Always run this step.<br/>

![Table Description automatically generated with medium confidence](@site/static/img/media/image256.png)

![Table Description automatically generated with medium confidence](@site/static/img/media/image257.png)

**Limitation: Agreements workflow are not able to take Signing limit in consideration and have not support for std position hierarchy (Line).**

**Step 3: Activate agreement automatically** (Only if needed for customer, agreement can be manually activated)<br/>
**Basic settings**: Enter name, subject and instructions.<br/>
**Assignment**: Select User – tab User – Select a system admin account.<br/>

**When finished**: Select save and close then activate the agreement.<br/>

![Table Description automatically generated with medium confidence](@site/static/img/media/image258.png)

![Table Description automatically generated with medium confidence](@site/static/img/media/image259.png)

### Other workflow elements
**Agreements approval** – Used for approval, approved can only approve or reject the agreement.<br/>
**Agreements approval, editable** – Used for approval, approver have right to edit the values in the agreement.<br/>

**Activate agreement automatically** – The agreement is automatically activated after last approval.<br/>
**Review agreement** – User is set as reviewer, can only review, or reject the agreement.<br/>
**Review agreement (editable)** – User is set as reviewer and have right to edit the values in the agreement.<br/>

![Table Description automatically generated with medium confidence](@site/static/img/media/image260.png)

### Associate hierarchy
Select Workflow – Hierarchy – Associate hierarchy and select the hierarchy that agreement shall use<br/>
- select OK.

![Table Description automatically generated with medium confidence](@site/static/img/media/image261.png)

