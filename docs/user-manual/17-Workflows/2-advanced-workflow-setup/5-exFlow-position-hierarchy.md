---
title: ExFlow position Hierarchy
sidebar_position: 5
hide_title: true
custom_edit_url: null
---
## ExFlow position Hierarchy 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

### Introduction
The aim of this functionality is to have a hierarchy setup similar to D365 Standard but with the addition of different user groups or roles. This also includes the implementation of signing limits within these groups/roles which makes it easier to include them in the approval process. To achieve this, a flexible hierarchy has been used for the assignment of various resources to different positions. Additionally, a new “Exflow owner” and “Exflow position” fields are added within the financial dimensions and global reference to accommodate these adjustments in workflow management.<br/>

### Dimension values
eneral ledger | Chart of accounts | Dimensions | Financial dimensions<br/>
In the financial dimension values, next to the owner field, a new field “Exflow owner” is created where Exflow users, Security roles, User groups can be assigned.<br/>

![Table Description automatically generated](@site/static/img/media/image561.png)

### Exflow hierarchy
A new submenu for “Exflow position hierarchy”<br/>
Navigate to Exflow | Setup | Workflows | Approval Workflow setup | Exflow position hierarchy, which has the following menu points:<br/>

| Description of functionality | |
|:-|:-|
| Menu point | Description |
|ExFlow position hierarchy mapping| This is the same as in D365 standard, except the hierarchy list it is from the new “Exflow Position Hierarchy types”.|
|Exflow Position| This is similar to D365 standard hierarchy, except that it does not have payroll, worker’s compensation, labour union and budget defaults fields. Also “Assigned resource” supports Exflow users, Security roles and User groups as possible assignments for the resource.|
|Exflow position hierarchy| This is the same as in D365 standard hierarchy, except the layout is of Exflow position hierarchies.|
|Exflow Position Hierarchy types| This is similar to Position hierarchy types in D365 standard, except it does not have the field “Workflow using this hierarchy type”. |

#### Global reference
In global reference values, next to the position field, a new field “Exflow position” is added which allows assignment of Exflow positions from the “Exflow Position” form.<br/>

![Table Description automatically generated](@site/static/img/media/image562.png)

#### Workflow providers
For Advanced approval workflow and Agreements workflow there are two providers:<br/>
- Exflow hierarchy provider – this is similar to D365 std, except Exflow positions are used instead of standard.<br/>
- Exflow dimension owner – this allows the assignment of approver from the “Exflow owner” field on the financial dimension value.<br/>

![Table Description automatically generated](@site/static/img/media/image563.png)<br/>

![Table Description automatically generated](@site/static/img/media/image607.png)