---
title: Deferral functionality
sidebar_position: 6
hide_title: true
---
## Deferral functionality
<button class="pdf-button btn_higher" onClick={() => { print(); }}>Save as PDF</button>

:::info **NOTE: This function is built to only support the direct posting process**
:::

### Introduction
Revenue and expense deferrals are implemented in an organization’s billing schedule to distribute expenses over certain periods of time.

### Limitations 
Deferral functionality only works and are visible for expense invoice with line type Ledger.
Due to standard functionality, it will only work in the Direct posting process.

### Setup in D365FO
#### Enable the feature for Subscription billing
Enable the feature for Subscription billing in the workspace Feature management.<br/> 
Feature ‘Subscription billing’ is the main feature and the first version with expense the feature ‘Revenue and expense deferrals’ must be enabled.<br/>
This feature will enable new module in main menu ‘Subscription billing’

![Graphical user interface, application Description automatically generated](@site/static/img/media/image722.png)

#### Deferral templates
Subscription billing \| Revenue and expense deferrals \| Setup \| Deferral templates<br/>
Use the Deferral templates page to define straight-line templates that are used for deferral schedules.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image721.png)

### Deferral defaults
Subscription billing \| Revenue and expense deferrals \| Setup \| Deferral Defaults<br/>
For general journal it can be specified the deferral accounts. When deferral account is used on transaction line, transaction is automatically marked as deferred.<br/>
Straight-line template can be setup in Deferral templates.<br/>

![Graphical user interface, application Description automatically generated](@site/static/img/media/image723.png)

### Setup for ExFlow
#### Configuration 
ExFlow AP \| Setup \| Configuration \| Add/delete columns<br/>
Enable the fields under **DEFERRAL**.<br/>
**Please note:** The fields are only visible if the company is using the Direct posting process.<br/>
![Graphical user interface, application Description automatically generated](@site/static/img/media/image724.png)

##### Visibility in configuration
After deferral is enabled in the ExFlow initiation wizard, three (3) lines appears in configuration overview.<br/>

![Graphical user interface, application Description automatically generated](@site/static/img/media/image725.png)

### Usage
#### Import form
In combination with Vendor on header and account number on the line, a search is done if there is any hit in Deferral default. If hit, a record is created in deferrals, and the display field for deferral is checked.<br/>
It’s possible to change deferrals by clicking button Deferrals, it will open form where deferral can be edited.
The Recognition account number can be changed, the Template can be changed, and Deferral start date can be changed.<br/>
 
![Graphical user interface, application Description automatically generated](@site/static/img/media/image726.png)<br/>
![Graphical user interface, application Description automatically generated](@site/static/img/media/image727.png)

#### Document form
Same function as in import form.<br/>
The values in document form can also be changed from the web, and changes will be made on invoice lines.<br/>


#### My vendor invoices
Same function as in import form.<br/>
The values in document form can also be changed from the web, and changes will be made on invoice lines.<br/>


#### ExFlow web
The fields and values are presented among all the other fields on the lines.
Values can be changed and the values will update the values in document form.<br/>

![Graphical user interface, application Description automatically generated](@site/static/img/media/image728.png)

If **Deferred** is set from `No` to `Yes`, a search is done as in the forms, and the default values will be set if found, if no default is found, error text will appear.<br/>

If **Main account** is changed, a search is done as in the forms, and the default values will be set if found.
If no default is found, **Deferred** will be set to No.<br/>

**Note: It is not possible to combine Accrual and Deferral, this will give error and must be handled.**<br/>

#### Invoice Journal
The deferral values that was set during the approval process are set to the lines, then D365 standard that follows.

#### Workflow
SubBillDeferralDeferred value in the workflow will check if invoice lines is deferred if `Yes` it will continue with the workflows next steps.<br/>

![Graphical user interface, application Description automatically generated](@site/static/img/media/image729.png)