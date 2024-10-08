---
title: Workflow for agreement approval
sidebar_position: 6
hide_title: true
---
## ExFlow workflow for agreement approval <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

ExFlow | Setup | Workflows | Workflows

- Select "New" and choose workflow type "ExFlow workflow for agreement approval.
- Select Workflow – Hierarchy – Associate hierarchy and select the hierarchy that agreements workflow shall use. Select OK


### Select New Workflow
Select ´New´ and choose workflow type ´ExFlow workflow for agreement approval´.

![Table Description automatically generated with medium confidence](@site/static/img/media/image39.png)


### Build the Workflow
ExFlow | Setup | Workflows | Workflows

Below example are setup for an approval flow: Responsible person – Manager for the responsible person – Automatically activate the agreement after approval.

![Table Description automatically generated with medium confidence](@site/static/img/media/image253.png)

**Step 1: Responsible person**
**Basic settings**: Enter name, subject and instructions.
**Assignment**: Select Participant – tab Role based – Select type as `Agreement workflow participant´ and participant as Responsible person.
**Condition**: Always run this step.

![Table Description automatically generated with medium confidence](@site/static/img/media/image254.png)

![Table Description automatically generated with medium confidence](@site/static/img/media/image255.png)

**Step 2: Manger from position hierarchy**
**Basic settings**: Enter name, subject and instructions.
**Assignment**: Select Hierarchy – tab Hierarchy selection – Select type ExFlow Agreement hierarchy and start from - Responsible person. Add stop condition: 
Where &lt;Employee.Line manager level&gt; = field &lt;Employee.Line manager level&gt;
**Condition**: Always run this step.

![Table Description automatically generated with medium confidence](@site/static/img/media/image256.png)

![Table Description automatically generated with medium confidence](@site/static/img/media/image257.png)

**Limitation: Agreements workflow are not able to take Signing limit in consideration and have not support for std position hierarchy (Line).**

**Step 3: Activate agreement automatically** 
(Only if needed for customer, agreement can be manually activated)
**Basic settings**: Enter name, subject and instructions.
**Assignment**: Select User – tab User – Select a system admin account.

**When finished**: Select save and close then activate the agreement.

![Table Description automatically generated with medium confidence](@site/static/img/media/image258.png)

![Table Description automatically generated with medium confidence](@site/static/img/media/image259.png)

### Other workflow elements
**Agreements approval** – Used for approval, approved can only approve or reject the agreement.
**Agreements approval, editable** – Used for approval, approver have right to edit the values in the agreement.

**Activate agreement automatically** – The agreement is automatically activated after last approval.
**Review agreement** – User is set as reviewer, can only review, or reject the agreement.
**Review agreement (editable)** – User is set as reviewer and have right to edit the values in the agreement.

![Table Description automatically generated with medium confidence](@site/static/img/media/image260.png)

### Associate hierarchy
Select Workflow – Hierarchy – Associate hierarchy and select the hierarchy that agreement shall use - select OK.

![Table Description automatically generated with medium confidence](@site/static/img/media/image261.png)
