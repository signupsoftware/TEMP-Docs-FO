---
title: View and edit imported invoices
sidebar_position: 2
hide_title: true
custom_edit_url: null
---
## View and edit imported invoices 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

This form shows the selected invoice image to view or edit with "side by side" mode activated.

Use this form to view and edit the data for the imported invoice, to edit you must have "taken" the invoice by pressing the "Take" button.

When you have reviewed all the required information, you can validate the data by selecting the "Validate" button or post the invoice for invoice registration by selecting the "Post" button and the invoice is then accessible in the ExFlow document form and sent out for the approval process.

- Select the `Edit` button.

![A screenshot of a computer Description automatically generated with low confidence](@site/static/img/media/image95.png)


|Buttons (Action pane)| |
|:-|:-|
|Save|Save the data entered in the form.|
|Delete|Delete the selected invoice.|
|Arrows|Toggle between ‘taken’ invoices.|
|Delete|Delete the selected invoice.|
|General/Take|Change the field ‘User id’ to the current user and allow the current user to edit the invoice. The reverse button is ‘Release’.|
|General/Release|This button releases the User id for an invoice and changes the field to blank. The reverse button is "Take".|
|General/On hold|Stop the invoice from posting to the General ledger. In the grid the column "On hold" is ticked. The reverse button is "Un-hold".|
|General/Unhold|This button releases the invoice to be included in posting. The reverse button is "On hold".|
|General/Post|This function will post the invoices into the Dynamics 365 invoice pool, ExFlow ‘Document’ form and send the invoice to the first approver in the approval route. This also executes the ‘Validate’ function.|
|General/Validate|This function validates that all information is correct on the invoice. It validates against the ExFlow setup and standard Dynamics 365 Invoice register journal rules.|
|General/Simulate postings|This function validates in the same manner as an actual posting does, but nothing is posted.|
|General/Account|If required, set the financial dimensions for the invoice at invoice registration stage.|
|General/Sales tax|This button opens the standard Dynamics 365 form "Sales tax transactions". Use this form to view and modify the expected sales tax transactions that have been calculated, as well as the actual sales tax amount. Typically, this form is used for review only, not edited.|
|General/Use scanned|Use the scanned sales tax amount and copy the amount to the ‘Actual sales tax’ field. This may be used if the sales tax has been accidentally deleted.|
|General/Breakdown of voucher|This function gives the user to breakdown a voucher and split the invoice register posting into different lines with different tax settings. There is also an extra function that gives the user the option to automatically create the ExFlow lines based on the lines split in Breakdown of voucher.|
|General/Retrieve product receipts|If the item lines on the invoice are not imported, you can retrieve these items from the receipt of the purchase order items instead. This are often used when one invoice corresponds to a receipt, and only header level matching is required.|
|General/Retrieve purchase orders|If the item lines on the invoice are not imported, you can retrieve these items from the purchase order instead, if only header level matching is required.|
|General/Retrive product receipts (advanced filters)|If the item lines on the invoice are not imported, you can retrieve with more advanced filters these items from the receipt of the purchase order items instead. |
|General/Retrieve purchase orders (advanced filters)|If the item lines on the invoice are not imported, you can with more advanced filters retrieve these items from the purchase order instead, if only header level matching is required.|
|General/Add penny difference|Add a penny difference row for purchase order invoices. This will automatically add the difference between the sum of all lines and the net sum of the header.|
|General/Allocate difference amount|Used to manually trigger amount difference allocation between header and lines.|
|General/Invoice Matching|Use to manually run invoice matching, for example against agreements or if a purchase order has been delivered after it has been posted from the ExFlow Import form. This function will rematch the invoice against the purchase order and attempt a full match.|
|General/Rretrive from freight bill| 
|General/import from file| To import coding from the generated Excel or CSV file.|
|General/Show invoice|Open a preview window with the attached image file (invoice).|
|Manage/Journal Descriptions|Displays the journal.|
|Manage/Set override approval|This function lets the clerk to override the approval of an invoice meaning even due an approval route is specified the system will set the invoice to approved automatically with an admin comment that informs the user that an override has been made.<br/>**Please note**: This functionality is for security reasons switched off from start. The functionality is controlled by the menu item button EXF_maSetOverrideApproval and is not connected to a privilege. This must be setup by an administrator and for example added to the role ExFlow_purchasePayableAdmin for a user that is not system administrator to access this function.|
|Manage/Run Action workflow| Triggers the actions workflow manually.|
|Manage/Voucher|Displays the voucher.|
|Manage/Sales tax totals|Displays the Sales tax totals form.|
|Manage/Budget check errors or warnings|Displays the standard ‘budget check’ errors or warnings form.|
|Manage/Attributes|Shows the attributes form|
|Manage/Timeline| Shows the invoice timeline of the events that has been registered|
|Manage/Reference person|Opens the Reference form.|
|Manage/Pre-accounting|Applies the pre-accounting values if they exist and match the criteria.|
|Manage/Manual pre-accounting|Opens the pre-accounting form and lets the user apply a different pre-accounting rule.|
|Manage/Get invoice coding| Active when using Automatic invoice coding, This is a quick way to get same result as in the import. It is the same rules as when import with priority 1 and 100%, it is the same code in the background. Only enable if suggestion exists for the invoice.|
|Manage/Select invoice coding|Active when using Automatic invoice coding, If user wants to use another Ledger account than priority 1, it can be done in this form. By selecting one or more lines, import lines will be created using data from the suggested line/lines. This button is always enabled so the user can see the criteria the suggestions is based on, this can be useful even if there is no suggestion.​​|
|Manage/View automatic coding|Active when using Automatic invoice coding, Invoice coding suggestions when importing or selected by user. Reselect will delete old data if "Get invoice coding" or "Select invoice coding – (Replace)" is used. If `OK` is pressed in selection form, the lines will be inserted in the suggestions|
|Overview|Show more fields from the Invoice header and no fields from the lines.|
|General|Show fields related to the lines and a limited number of header fields.|

|Buttons (Lower pane), Import lines (Line view)| |
|:-|:-|
|Add line|Add a new line.|
|Remove|Remove the selected line.|
|Refresh line VAT|Is used to update the calculated VAT on line level if changes has been to the invoice.|
|Suggest approvers|Create approval route/s based on the current setup of "Approval and validation rules". Note that this is typically automatically done upon import.|
|Suggest approvers – all lines|Create approval route/s based on the current setup of "Approval and validation rules" for all the lines on the invoice. Note that this is typically automatically done upon import.|
|Toggle "Keep approval chain"|Toggle "Keep approval chain" lets the accounts payable personal working in ExFlow import or document form to overrule the automatic supplied approval rules and set manual approvers without them being changed even due for example the dimension values are updated.<br/>**Please note:** This functionality is for security reasons switched off from start. The functionality is controlled by the menu item button EXF_maKeepApprovalChain and is connected to the privilege EXF_pPurchasePayableAdmin which in its turn is connected to the role ExFlow_purchasePayableAdmin.<br/>From start the permission for this object is set to Deny. To give all ExFlow purchase payable admin access to this functionality a security administrator needs to set the permission to Grant for all access levels for this object in the EXF_pPurchasePayableAdmin. It is also possible to grant access for just certain purchase payable admin, please contact your security administrator or SignUp for more information how to achieve this.|
|Suggest approvers with logging|This functionality is valid when you work with advanced workflow as an approval method. If choosing to use this way to suggest approvers a new window opens with details on how the chain of approvers where set by the advanced workflow. For more information see the description at the end of this section.|
|Add approver<br/>(Tab Approvers)|Insert a new line and select an approver.|
|Remove<br/>(Tab Approvers)|Delete the selected approver.|
|Get approvers from auto coding<br/>(Tab Approvers)|To get approvers from auto coding.

|Fields (Upper pane), Import header (Line view)| |
|:-|:-|
|Vendor account|Select or displays the Vendor.|
|Vendor name| Displays the vendor name.|
|Invoice|Displays the invoice number.|
|Voucher|Voucher numbers created by standard Dynamics 365.|
|Posting profile|The posting profile to be used on this invoice.|
|Terms of payment| Displays the terms of paymet set on the  vendor account.|
|Tax exempt number| Displays the tax exempt number set on the vendor account.|
|Approved by|This is the standard Dynamics 365 field and will be used in Invoice registration and the final approval journal.|
|Posting date|Date when the invoice is posted.|
|Invoice date|Invoice date, this may override the posting date, according to standard Dynamics 365 rules e.g., Calculation of due date.|
|Due date|Date from scanned invoice or the Vendor setup depending on the setting in ExFlow parameters – Import tab.|
|Invoice amount|The invoice gross amount is shown. Credit invoice displays a minus (-) sign.|
|Currency|The invoice currency code. If the value is blank when the invoice is imported, ExFlow will first pick the currency on the vendor and as a second alternative from the legal entity.|
|Net amount|"Invoice amount" minus "Actual sales tax amount". If the actual amount is zero (0) the "Calculated sales tax amount" is used instead.<br/>The sum of all line amounts must be equal to the "Net amount".|
|Line amount| Displays the line total amount.|
|Balance|The balance must be zero (0), otherwise the net amount and line amount differ. If not zero, you need to enter a correction of the line values or invoice/sales tax value.|
|Calculated sales tax amount|The sales tax amount based on the calculation from "Sales tax group" (Vendor) and "Item sales tax group" (Item).|
|Actual sales tax amount|The sales tax amount captured from the invoice. If greater than zero (0) it will override "Calculated sales tax amount".|
|Sales tax group|One of two values to calculate "Calculated sales tax amount". The value is captured from the Vendor and sales tax set up.|
|Item sales tax group|The second parameter to calculate the "Calculated sales tax amount" field. This value is captured from the item, otherwise from the ExFlow setup parameter.|
|Use tax|This checkbox will be ticked if the AX Sales tax configuration includes "Use tax" for the chosen Sales tax group/Item sales tax groups. All amounts be without tax (gross amount). This is used when the Sales tax is only used for statistical purpose, e.g., EU-VAT.|
|Reverse charge|This checkbox will be ticked if the D355FO Sales tax configuration includes "Reverse charge" for the chosen Sales tax group/Item sales tax groups. All amounts be without tax (gross amount).|
|Override purchase tax|This option is only visible if the invoice is a purchase order invoice. If set to yes, the tax from the invoice will be used in the final posting instead of the tax setup on the purchase order.|
|Date of VAT register|This field is only used if the Polish localization is switched on in ExFlow configuration form.|
|Service tariff number|This field is only used if the Eastern Europe localization is switched on in ExFlow configuration form.|
|Purchase order|If the Purchase order number is captured from the invoice, it is shown in this field.|
|Project id|If the Project id is captured from the invoice, it is shown in this field.|
|Reference|The captured Reference field on the invoice. If "Reference" is set up in the Reference setup table, that value is shown.|
|Vendor reference|
|Payment id|Payment id information that is captured from the invoice.|
|PO required|This function indicates if the setting PO required is set for a unique vendor, then this field indicates that there has to be a purchase order number in combination with item lines.|
|Account identification|If the third-party bank account is imported from the OCR file it will be populated in this field, it can also be changed to another value from the bank account list set for this vendor.|
|Agreement number|Display’s the value imported from the OCR file if it contains a reference to an agreement (field Misc 6 is used for this in the file).|
|Description|This is the description that will be populated on the posted rows in the journal. By default, ExFlow always sets the vendor’s name.|
|Override approval|Indicates if the function override approval is used for the current invoice (see more details in button section above Manage/Set override approval).|
|Override approval set by|In this field the username of the person that set the invoice to "Override approval" is stored.|
|Send email|When set to "Yes" an email will be sent to the first approver (status "Current") when the invoice is registered. This can be set manually or via batch. (See more details|
|Confidential|If an invoice should be handled as confidential meaning it can only be view by approvers that has those specific permissions. It is not allowed to change approver on this invoice when it is sent out for approval. It cannot for example be displayed in Power BI etc. See separate white paper that can be retained from Signup Software AB.|
|Method of payment|Used for payment method|
|Payment specification|Used for payment specification|
|Reference payment|Used for payment reference|
|Bank account number|The bank account number that will be used when paying the vendor invoice|
|Central bank purpose code|Used to classify payments|
|Invoice type|Used to classify invoices.|
|Receive document date|This field is only used if the Eastern Europe localization is switched on in ExFlow configuration form.|
|Prepaid invoice|If this invoice is used with prepayment.|

|Fields (Lower pane), Import lines (Line view)| |
|:-|:-|
|Line type|<u>Shows the line type.</u><br/>Ledger: Line with General ledger accounting only.<br/>Item: Line with stocked items and linked to a purchase order<br/>Charges: Charges that are added to an invoice.<br/>Project: Line related to the Project module with a project id.<br/>Asset: Line related to the Fixed assets module with an asset id.<br/>Procurement: Line that defines the Procurement category.<br/>Customer: Line that defines the customer.<br/>Landed cost: Line that defines the Landed cost.|
|Purchase quantity| Displays the purchase quantity.|
|Purchase price| Displays the unit price|
|Amount| Displays the amount.|
|Unit|
|Purchase order|Displays the purchase order number.|
|Charges code|Displays the charges code if the line type is set to ‘Charges’.|
|Description|Description for the line.|
|Lot ID|The received Purchase Order lines number that the invoice line is matched against.|
|Item number|The D365 F&amp;O item number.|
|Name|The D365 F&amp;O item name.|
|Product name|The D365 F&amp;O product name.|
|Procurement category|The Procurement category.|
|Vendor item number|The External vendor’s item number.|
|Vendor item description|The External vendor’s item name.|
|Purchase quantity|The line’s quantity. For expense invoice the default value is 1.|
|Purchase price|The invoice line’s unit price.|
|Amount|The line sum.|
|Calculated net amount/amount origin|Calculated net amount per line.|
|Calculated sales tax amount|Calculated sales tax amount.|
|Sales tax code|Display’s the tax code based on the tax combination per line.|
|Percent|Calculated tax displayed in percentage per line.|
|Non-deductible %|Display’s nondeductible VAT in percentage.|
|Discount|Discount in percentage.|
|Line Discount|Discount amount.|
|Unit|Unit of measure.|
|Tax exempt number|Tax exempt number from the purchase order|

|Fields (Lower pane), Line details (Line view), Tab Dimensions| |
|:-|:-|
|Account|Enter or select the accounting dimensions values.<br/>Alt + Up arrow: Displays the account structure’s dimensions.<br/>Alt + Down arrow: Displays the current dimension’s values.|
|Financials dimensions|Displays the selected dimension values.|
|Other dimensions|Displays the non-financial dimensions which apply to the selected line type (Ledger, Asset etc.).|
|Unit|Unit of measure.|


|Below fields for Procurement type lines only:| |
|:-|:-|
|Procurement category|Selection of the Procurement category.|

|Below fields for Landed cost type lines only:|
|:-|:-|
|Voyage|Voyage ID|
|Cost type code|Cost type code.|
|Below fields for Project type lines only:|
|Sales currency|Sales currency|
|Sales price|Sales price|
|Project date|Project date|
|Project sales tax group|Project sales tax group|
|Project Item sales tax group|Project Item sales tax group|


| Fields (Lower pane), Line details (Line view), Tab Approvers | |
|:-|:-|
| Is role                                                      | Ticked when a Role is selected in the field User/Role.                                                                                          |
| User/role                                                    | Select a User or a Role to approve this invoice line. A Role is a predefined group of users where any one of them can approve the invoice line. |