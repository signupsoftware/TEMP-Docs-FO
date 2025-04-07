---
title: Configuration
sidebar_position: 6    
hide_title: true
custom_edit_url: null
---
## Configuration <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow \| Setup \| Configuration (Basic initiation data)

ExFlow configuration has an impact on other functionalities that exists in the system which will influence the type of the invoices [Cost (ledger – Project – Fixed Asset) PO (Item - Procurement category)] being processed but also has an impact some other functionalities such as: 

<u>ExFlow web</u>
---

- Sort Order of Dimensions  ​

- Show/Hide dimensions 

- Enable /disable edit of dimensions for cost invoices 

- Grouping/sub-grouping source dimensions 

- Generate template for importing invoice lines 

- Controls the Sort order of dimensions of the exported template 


![Table Description automatically generated](@site/static/img/media/image13.png)

This setup should only be used by trained administrators.


### Columns, User level permission and User level
---
The tabs Columns, User level permission and User level are set up and modified by the "Add/delete columns" button. These settings define which ExFlow fields should be used for a customer installation. 

The buttons "Sort order" sets the order based on the setup of the active account structures. The sort order is used when importing invoice lines via a CSV or Excel file. The "Field setup" button allows the person to set up the field's Line display expression, Line copy expression and Line edit expression.

### Source dimension
---
The tab "Source dimension" is only for customer specific requirements. For example, if other fields should be used in ExFlow in addition to those that can be found in the financial dimension setup, then they must be added in this form with the correct data type, table name or dimension and Reference table ID.

*Please see white paper "[Exflow configuration](https://support.signupsoftware.com/knowledgebase/article/KA-01115)" for further details or contact your ExFlow partner.*

### User level permission
---
|Permission | Description |
|--- | ---------|
| UP_Allow_Edit | Enables the user to edit lines where he/she is current approver | 
| UP_Allow_Split | Enables the user to split lines. See also the LineType structure and its expression rules|
| Up_Allow_View_All | Enables the user to search other users documents | 
| UP_Allow_Public_Templates | Enables the user to mark Line templates as public |
| UP_Allow_Add_Approver | Enables the user to add new approvers |
| UP_Allow_Set_Replacer | Enables the possibility to add a replacer |
| UP_Deny_Templates | Disables the Line temp late feature|
| UP_Deny_Feedback | Disables the feedback button (preview) |
| UP_Deny_Forward | Disables line and document forwarding|
| UP_Deny_Forward_Unless_First | Disables line and document forwarding if not the first approver|
| UP_Deny_Show_Replacer | Hides replacer information |
| UP_Deny_Inbox_Field_Selection | Disables the user to change inbox columns | 
| UP_Deny_User_Pref | Disables the user to override/customize options | 
| UP_Deny_Line_menu | Hides the menu on the lines | 
| UP_Deny_Save | Disables the Save button | 
| UP_Deny_Validate | Disables the Validate button |
| UP_Deny_Hold | Disables the Hold button |

  
:::info **NOTE! User level permissions is case sensitive**
:::

<video src="https://docs.exflow.cloud/videos/FO/config_exflow_ap.mp4" width="600" height="400" controls></video>