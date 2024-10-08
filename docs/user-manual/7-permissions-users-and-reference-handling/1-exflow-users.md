---
title: Setup ExFlow Users
sidebar_position: 1
hide_title: true
---
## ExFlow Users <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

ExFlow \| Setup \| Maintenance \| Users

You need import all the users who will approve invoices in the active companies. The user/approver must exist in the Active Directory (AD) domain and be added as a D365 user, connected to the person/worker and with required setup with security roles **"ExFlow approval role"** and **"ExFlow web approval"**. The set up for users in standard D365 - System administration \| Users.

### ExFlow Security roles (D365 standard)
System administration \| Users \| Users

![Graphical user interface Description automatically generated](@site/static/img/media/image307.png)


### ExFlow User roles
ExFlow \| Setup \| Maintenance \| Users

![Graphical user interface Description automatically generated](@site/static/img/media/image308.png)

The functionality where security roles will be replaced with user groups are described further in the white paper *"[ExFlow user groups and security roles](https://support.signupsoftware.com/knowledgebase/article/KA-01136)"* and *"[ExFlow security Roles](https://support.signupsoftware.com/knowledgebase/article/KA-01025)"*.

![Table Description automatically generated](@site/static/img/media/image28.png)


|Buttons (Action pane)|
|:-|:-|
|Edit|Edit ExFlow users|
|New|Add a new ExFlow user, who will have permissions to approve invoices in the selected company.|
|Delete|Delete users (this is only possible if the user is not part of any transaction). Recommend to only inactive users.|
|Maintain<br/>ExFlow user|Starts "ExFlow user creation wizard" to add one or several new ExFlow users in several selected companies.|
|Maintain<br/>ExFlow user roles|Updates the selected users User roles. (Select user -&gt; Maintain Exflow user roles -&gt; Add/remove roles for the selected user -&gt; Update user role -&gt; Update).|
|Maintain<br/>ExFlow user groups|Updates the selected users User groups. (Select user -&gt; Maintain Exflow user groups -&gt; Add/remove groups for the selected user -&gt; Update user group -&gt; Update).|
|Maintain<br/>Delegations setup<br/>(Multiple companies)|Edit users delegation setup in multiple companies at the same time. (Filter in multiple companies shows replacers active companies)|
|Maintain<br/>Filter Role/Group/Replacer|Opens a new form in which users can be filtered based on replacers, groups, or roles. Can be exported to excel for audit.|

|Fields-User ID|
|:-|:-|
|Active|Marked if the approver is Active, i.e., allowed to be a user/approver in ExFlow.|
|Part of ExFlow Approver security group|If the user is a part of an ExFlow security group|
|Part of ExFlow web user security group|If the user is a part of an ExFlow web user security group|
|Connected to user groups|If the user is connected to a user group|
|Company ID|Displays which company the user is added to.|
|User ID|User ID used for login to the ExFlow web.|
|Operator name|The user’s full name.|
|Enabled in D365|If the user is enabled in D365 (mandatory to use ExFlow).|
|User Level|Super user, Power user or User. These three different ’Roles’ determine what an approver can do in ExFlow web.<br/>**Super user**: Permission to change coding, approve, reject or set an invoice on hold. They also have rights to search all invoices in the company.<br/>**Power user**: Permission to change coding, approve, reject or set an invoice on hold. They also have rights to search through their own invoices in the company.<br/>**User**: Permission to approve, reject or set an invoice on hold. They also have rights to search through their own invoices in the company.|
|User level name|User level name|
|Approval amount|If user has should have different approval amount than set in standard signing limit policies. Controlling credit and debit invoice approval process when the amount of the invoice is higher than the assigned approval amount. (Needs to activated from parameters.)|
|Currency|Currency for approval amount.|
|Handle confidential inv.|To be ticked if the user should have permission to handle and view invoices that are set as "Yes" for confidential in ExFlow import.|


|Tab-Role|
|:-|:-|
|Role reference|If a user should be assigned a role. There must always be a user setup behind each role. Invoices can for example, be sent out for approval to a role having several unique approvers as members of that role.|


|Tab-User Group|
|:-|:-|
|User group|If a user should be assigned to a user group. The groups are standard D365FO user groups created in System administration. Is used if approvers are set by user groups.|


|Tab-Replacer|
|:-|:-|
|Replacer|The User id for the replacer.|
|Name|The Replacer’s user name.|
|Start date|From which date the replacer should be active.|
|End date|Date until when the replacer no longer should be active.|

## Other things to consider

- Routines for onboarding of new approvers.
- Activate user in D365FO.
- Always connect user to a person (worker).
- Provide correct security roles for the legal entity.
- Add new users to your Position Hierarchy (if applicable).
- Add the new user as ExFlow user with decided ExFlow user role.
- Routines for retiring approvers.
