---
title: ExFlow permissions
sidebar_position: 4
hide_title: true
---
## ExFlow Permissions <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

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


NOTE! User level permissions is case sensitive 