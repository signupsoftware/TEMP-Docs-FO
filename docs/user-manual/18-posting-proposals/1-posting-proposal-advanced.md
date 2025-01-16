---
title: Posting proposal advanced
sidebar_position: 1
hide_title: true
custom_edit_url: null
---
## Posting proposal advanced 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow \| Setup \| Miscellaneous \| Posting proposal advanced

The advanced posting proposal functionality has replaced the old posting proposal functionality. The difference between the advanced posting proposals and the previous version is that it is built upon the settings in ExFlow configuration.

Every field setup in ExFlow can be set up in a posting proposal and automatically, for example, set the main account/s, standard Dynamics 365 accrual identification, projects, fixed assets, procurement, landed cost, intercompany, and dimensions on imported invoices. 

It can also be used to automatically split the invoice into multiple lines with different allocations. A posting proposal can be linked to a Reference, Vendor account, or both in combination. The invoice will then automatically be pre-coded when the invoice is imported to the ExFlow Import form. 

Additionally, the "Posting Proposal Advanced" feature allows users to distribute invoice amounts more accurately across different lines. This is achieved by offering two calculation methods: "Percent" and "Fixed weight". These methods are applied to the remaining invoice amount after deducting any "Fixed amount".

<video src="https://docs.signupsoftware.com/finance-operations/video/postingproposals.mp4"width="600" height="400" controls></video>

![Graphical user interface, application Description automatically generated](@site/static/img/media/image86.png)


| Buttons (Action pane) | |
|:-|:-|
| Save                  | Save.                                 |
| New                   | Add a new Posting proposal.           |
| Delete                | Delete the selected Posting proposal. |
| **Buttons (Lines)**       |
| Add line              | Create a new record.        |
| Remove                | Remove the selected record. |
| **Fields (Overview)**     |
| Pre accounting id     | Must be a unique value (mandatory field).                                    |
| Reference             | The Reference on the invoice (Vendor and/or Reference is a mandatory field). |
| Vendor account | Specify vendor account for the Posting proposal. |
| Name | Name of the Vendor. |
| Description | Description of the Posting proposal. |
| Line type layout | Specify the line type for the Posting proposal. Available options: (Mixed values), Ledger, Project, Fixed asset, Landed cost, Procurement. |
| Credit debit selection | Specify for what type of invoices the Posting proposal setup is applied. Available options: Both, Credit, Debit.|

The pre-coding of invoices can also be applied manually, even if no Posting proposal is automatically triggered, by clicking the "Manual pre-accounting" button in the "Manage" tab. The user can select which Posting proposal to use.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image87.png)

### Invoice amount distribution

There are three possible invoice amount calculation methods to configure: **"Percent", "Fixed weight" and "Fixed amount"**. 

**"Fixed weight" and "Fixed amount"** calculations are applied to the remaining invoice amount after deducting any "Fixed amount".

**"Percent" and "Fixed weight"** calculation methods cannot be used in the same posting proposal. 

All calculation methods can be used with all line types (Ledger, project, fixed asset, landed cost, and procurement).

**Fixed Amount:** This is a predetermined amount that is first deducted from the invoice amount.

**Fixed Weight:** This is a specific number that can be used in the same posting proposal as a fixed amount. This is particularly useful when calculations depend on a specific variable, such as the number of employees.

**Percent**: Calculated from the remaining invoice amount, following the subtraction of any fixed amounts.

___

**Example 1**

A posting proposal for a specific vendor is created with three different lines using percentages:

1st line with a fixed amount of 50EUR.
2nd line with a percentage of 50%.
3rd line with a percentage of 50%.

For an invoice amount of 100EUR, the coding lines would be:
Invoice Line 1: Amount 50EUR.
Invoice Line 2: 25EUR, calculated as (100EUR - 50EUR) * 0.5.
Invoice Line 3: 25EUR, calculated as (100EUR - 50EUR) * 0.5.

___

 **Example 2**

A posting proposal for a specific vendor is created with three lines using fixed weights:

1st line with a fixed amount of 50EUR.
2nd line with a fixed weight of 50.
3rd line with a fixed weight of 50.

For an invoice amount of 100EUR, the coding lines would be:
Invoice Line 1: Amount 50EUR.
Invoice Line 2: 25EUR, calculated as (100EUR - 50EUR) / 2.
Invoice Line 3: 25EUR, calculated as (100EUR - 50EUR) / 2.

___

### Posting proposal advanced tax values
The Posting Proposal Advanced feature enables the retrieval of tax values to the invoice lines. 

There are two parameters in the ExFlow setup that affect value overwriting: "Keep sales tax groups at approval" and "Keep tax groups." Enabling or disabling these parameters will impact how values are set.

#### Posting proposal for line type project
The behavior differs depending on whether you are coding on a project ID that contains financial dimension values or not:

**Coding on a project without default dimension values:**
If the parameter 'Keep project dimension values' is enabled, the values will be retained.

**Coding on a project with default dimension values:**
If the parameter 'Keep project dimension values' is enabled, all values will be overwritten.

If the parameter **'Keep project dimension values' and 'Merge project and line'** are both enabled, values will be overwritten except for those that are not already overwritten.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image262.png)

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image263.png)

When it comes to coding values, they are always retained when the **'Keep project dimension values'** parameter is enabled, except for sales tax information, which is handled separately.

If the parameter for coding values is turned off, the system will attempt to find the default category and set the service line and item sales tax group based on it. This update will occur even if the **'keep sales tax groups at approval'** parameter is enabled.
 
Additionally, it's worth noting that company accounts, description, and procurement, category project, intercompany values are not deleted.