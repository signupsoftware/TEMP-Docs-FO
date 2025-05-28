---
title: Setup Automatic postings
sidebar_position: 1
hide_title: true
custom_edit_url: null
---
## Setup Automatic postings
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow \| Setup \| Resources \| Setup for automatic postings

Setup for automatic postings is a general settings form for ExFlow automatization processes.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image47.png)

| Buttons (action pane) | |
|:-|:-|
| Save                  | Save                 |
| Options               | Standard D365FO menu |

### Allocate charges

Allocate charges are used when purchase order invoices are posted without having the user to manually choose the allocation. It is also now supported to work with batch posting of purchase order invoices that has allocated charges.

![Graphical user interface Description automatically generated](@site/static/img/media/image48.png)

| Allocate charges          | |
|:-|:-|
| Account code              | Choose between All, Table or Group.                                 |
| Account relation          | Choose specific vendor/group depending on settings in account code. |
| Charges allocation        | Type of allocation to be used.                                      |
| Allocate charges to lines | Type of allocation to per line.                                     |
| Allocate all              | If the amount should be allocated over all items.                   |
| Stocked                   | If the amount should be allocated over stocked items.               |
| Received                  | If the amount should be allocated over received items.              |

### Project Category Item sales tax group

Project category item sales tax group is used to automatically choose an Item sales tax group in based on a project category.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image49.png)

| Project Category Item sales tax group - fields | |
|:-|:-|
| Project category code                          | Choose between All, Table or Group                                  |
| Project category relation                      | Choose the desired category relation.                               |
| Account code                                   | Choose between All, Table or Group.                                 |
| Account relation                               | Choose specific vendor/group depending on settings in account code. |
| Item sales tax group                           | Set the Item sales tax group that shall be used.                    |

### Vendors for credit settlement

Vendors for credit settlement is used if the ExFlow parameter "Authorized vendors only" is enabled in ExFlow parameters, prepayment, and settlement tab to only work with specified vendors.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image50.png)

| Vendors for credit settlement | |
|:-|:-|
| Account code                  | Choose between All, Table or Group.                                 |
| Account relation              | Choose specific vendor/group depending on settings in account code. |

### Vendors for pre-payment

Vendors for pre-payment is used if the ExFlow parameter "Authorized vendors only" is enabled in ExFlow parameters, pre-payment and settlement tab to only work with specified vendors.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image51.png)

| Vendors for prepayment | |
|:-|:-|
| Account code           | Choose between All, Table or Group.                                 |
| Account relation       | Choose specific vendor/group depending on settings in account code. |

### Vendors for goods arrival

The function vendors for goods arrival are used for invoices that are put on hold when they are posted from ExFlow import form and has a quantity variance. This is the same function that exists in ExFlow parameter form however this setting will support to setup individual rules based on for example vendor. Meaning when the batch job "Auto match purchase order invoices on arrival of goods" is run and try to rematch the invoice or if not possible send out the invoice for manual handling to an approver. The batch job will look in this setup to see if any unique rules for that vendor is configured.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image52.png)


|Vendors for goods arrival| |
|:-|:-|
|Account code|Choose between All, Table or Group.|
|Account relation|Choose specific vendor/group depending on settings in account code.<br/>See the below section for setting up ExFlow approval groups.|
|Number of days before system release of quantity variance invoices|Number of days that the batch job triggers on before an invoice that is set on hold is released for manual approval.|

### Attribute value map

Attribute value map is used to setup tags that are read from the imported XML file that holds line level data for cost account invoices such as ledger accounts, dimensions, charges (misc.) and tax settings etc. To use this functionality, contact Signup Software AB or your partner for further discussions on how to configure the XML file that is used for import invoice data.

![A picture containing text, screenshot, indoor Description automatically generated](@site/static/img/media/image53.png)


|Attribute value map| |
|:-|:-|
|Account code|Choose between All, Table or Group.|
|Account relation|Choose specific vendor/group depending on settings in account code.<br/>See the below section for setting up ExFlow approval groups.|
|Reference|Reference|
|Key|The name of the tag in the XML file.|
|Column reference|The destination field in D365FO (the fields that are setup in ExFlow columns for the current company, e.g. project, cost center or misc).|
|Pass–through|If checked the raw data from the XML file is sent directly to the destination field.|
|From value setup| Priority setup for finding values. When importing an invoice with line attributes, the priority is to find value for:<br/>1. "Exactly like" setup - value is exactly the same as in "From value" field.<br/>2. "Begins with" - value starts with the same character as in "From value" field.<br/>3. "Ends with" - value ends with the same character as in "From value" field.<br/>4. "Contains" - value contains characters as in "From value" field.<br/>5. "Pass through" - blanks out the "From value" and "To value" fields and sends the raw data from the XML file directly to the destination field.|
|From value|If the value in the XML file is the same it is triggering a translation to the value in the "To value field", see below.|
|To value|The value that will be set in the destination field based on the from value.|


### System total amount approval

System total amount approval replaces the setting in ExFlow parameters, purchase order tab "Max total amount. The benefit of this setup is that unique settings can be made for different vendor or vendor groups if an automatic approval should be made or not depending on the approval amount.

![Graphical user interface Description automatically generated](@site/static/img/media/image54.png)


|System total amount approval| |
|:-|:-|
|Account code|Choose between All, Table or Group.|
|Account relation|Choose specific vendor/group depending on settings in account code.<br/>See the below section for setting up ExFlow approval groups.|
|Approval amount|The approval amount that are allowed for an automatic approval of a matched purchase order invoice should take place.|


### System line amount approval

System line amount approval replaces the setting in ExFlow parameters, purchase order tab "Max line amount". The benefit of this setup is that unique settings can be made for different vendor or vendor groups if an automatic approval should be made or not depending on the approval amount and matching policy.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image55.png)


|System line amount approval| |
|:-|:-|
|Account code|Choose between All, Table or Group.|
|Account relation|Choose specific vendor/group depending on settings in account code.<br/>See the below section for setting up ExFlow approval groups.|
|Approval amount|The approval amount that are allowed for an automatic approval of a matched purchase order invoice should take place.|
|Line matching policy|Choose if the rule should apply for two-, three-way matching or not required. If not required is setup without zero amount the result will be that all invoices with matching policy will be sent out for manual approval.|


### Adjust VAT in Invoice approval journal

Adjust VAT at approval gives the possibility to define the limits for adjusting VAT per supplier, supplier group or for all suppliers. This will override the setting in ExFlow parameters, sales tax tab "Allocate VAT difference if less than(percent)" and "Allocate tax difference if less than (amount)".

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image56.png)


|Adjust VAT at approval| |
|:-|:-|
|Account code|Choose between All, Table or Group.|
|Account relation|Choose specific vendor/group depending on settings in account code.<br/>See the below section for setting up ExFlow approval groups.|
|Allocate VAT difference if less than (percent)|Enter the maximum VAT difference that is allowed to be allocated in percent.|
|Allocate VAT difference if less than (amount)|Enter the maximum VAT difference that is allowed to be allocated in amount.|


### Charge tolerance amount system approval

This form is used to set tolerance amount per charge type and determines if a line charge should be system approved or sent out for manual approval.


![Graphical user interface, application, Word Description automatically generated](@site/static/img/media/image57.png)

### Validate packing slip qty

This form is used to select vendors in conjunction with items, for which packing slip connection should be applied.

See more information in documentation for packing slip setup.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image58.png)

### Allocate difference amount (between header and lines)

This functionality splits difference between header and line amounts on to lines based on the selected proportion type.


![Graphical user interface, application, Word Description automatically generated](@site/static/img/media/image59.png)

### Default dimension combination

This form is used to set default dimensions on invoice lines based on rules created.

Please note that this is a global functionality.


![](@site/static/img/media/image60.png)

### Separate suggest approvers from validate

Approving invoices in the external web can take a long time. This is most often due to the "suggest approver" functionality, that is when the system tries to create a new approval chain using advanced logic.

The purpose of this solution is to speed up the handling of invoices in the external web. The solution makes it possible to run the "suggest approver" logic separated from validation when using the web app.

ExFlow \| Setup \| Parameters\| General![Graphical user interface, application Description automatically generated](@site/static/img/media/image61.png)

To turn on the logic a record must be present in;

ExFlow \| Setup \| Resources\| Setup for automatic postings\| Separate suggest approver from validate. In the account code you can use Table, Group or All.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image62.png)

When the user approves invoice lines in the external web, information is written in tables in D365FO so the system will know which lines will be handled at a later stage. If this is the last line to be approved, the invoice status is set to "Unprocessed".

![](@site/static/img/media/image63.png)

Every line that is to be run in the "suggest approver" (see below) has been marked with status "Waiting" in the two forms that show ExFlow invoices (Document table list page and Document table).

Navigate to: Exflow \| Periodic tasks \| Miscellaneous \| Suggest approvers after validate.

Once approved the dialog - the invoice status changes to Approved.

![](@site/static/img/media/image64.png)

