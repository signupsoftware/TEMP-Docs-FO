---
title: Parameters
sidebar_position: 7    
hide_title: true
custom_edit_url: null
---
## Parameters <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow \| Setup \| Parameters

### General
![](@site/static/img/media/image2.png)

| Enable ExFlow | |
|:-|:-|
| Enable ExFlow | Enable / disable ExFlow in standard D365 FO objects. This can be helpful in determining if an issue is related to ExFlow or not. |
| Show invoice side by side | Enable / disable the invoice image to be displayed inside the ExFlow forms. |
| Show attachments | Enable / disable if attachments should be displayed as a tab next to the side-by-side functionality. |

| ExFlow Web | |
|:-|:-|
| URL to Web for invoice approval | Enter the URL address for the ExFlow web that should be sent in the email notification. |
| Remove financial dimensions not in account structure | Switching on this function will remove financial dimensions in ExFlow web that is not part of the account structure when autofill is used. |
| Summarize | Enable Summarize functionality for ExFlow web. To summarize invoice lines that has equal values based on certain criteria and only send out those lines for approval. |

|Coding validation at approval| |
|:-|:-|
|Coding validation at approval|**Always** - if the account structure validation should be active in the approval form.<br/>**Last Approver** - if the account structure validation only should apply to the last approver on the invoice.<br/>**None** - if there should not be any validation in the approval form, besides Dynamics 365 standard validation.|
|Separate suggest approvers from validate|The purpose of this solution is to speed up the handling of invoices in the external web. The solution makes it possible to run the "suggest approver" logic separated from validation when using the web app.|

|Posting proposal| |
|:-|:-|
|Vendor and reference required for matching|If check marked, it is mandatory to have a Vendor, as well as Reference on the invoice to get the coding allocation proposed.|
|Delete invoice lines if no posting proposal found|This function deletes the lines in the Import form when (for example) the Vendor is changed and if no new posting proposal can be found.<br/><u>Available settings:</u> <br/> **No:** Invoices with no posting proposal lines will not be deleted <br/> **Yes:** Invoices with no posting proposal lines will be deleted <br/> **Ask**: ExFlow will ask if you want to delete invoice lines if no posting proposals exist|
|Enable advanced posting proposal|Menu exit ExFlow/Setup/Miscellaneous/Posting proposal advanced. If the advanced posting proposal functionality is used it will replace the functionality of the old posting proposal.<br/> The old posting proposal is deprecated and will be removed in version 2.16.0|

|Release for payment| |
|:-|:-|
|Show release invoice for payment fields|Enable parameter to be able to block an invoice for payment in ExFlow. <br/> Two new fields are available on the "General" tab in Import form and Document form, "Invoice payment release date" and "Release date comment". The first one is which date the invoice should be released, and the comment field is used for information on why the invoice is blocked for payment. The information is also reflected on the vendor transaction.<br/>**PLEASE NOTE!** The removal of the payment block is done in Accounts payable on the invoice and not in ExFlow.|

### Document handling
![Graphical user interface, application Description automatically generated](@site/static/img/media/image3.png)

| Document handling   | |
|:-|:-|
| Document type invoice| Selected document type for storage of the invoice images.|
| Document type attachment | Selected document type for storage of the invoice attachment files. |

### Import
![A screenshot of a computer Description automatically generated](@site/static/img/media/image4.png)

|Import - Settings| |
|:-|:-|
|Import method|This setting is deprecated, and replaced by the Import methods located under ExFlow Setup. <br/>More information how to setup https://docs.signupsoftware.com/finance-operations/docs/user-manual/import-methods/import-methods-overview |
|**Invoice parameters** - Enable batch import for scanned invoices|Check mark to activate the automatic import of invoice captured data to the ExFlow import form.|
|Auto suggest approvers|Tick, if the approval route should be automatically populated when importing invoices.|
|Suggest approver threads|Can be used for performance reasons when the suggest approver function is run when Retrieve purchase order or Retrieve packing slips. The parallel threads will not process more than the web server allow. Recommended value is between 4 and 8 if used. Should be tested to see how performance on your server is affected.|
|Auto assign imported invoice to user|Check mark if the current user (i.e., one who presses the Scanned Invoices or Manual Invoices button) should be assigned as the User (i.e., "owner") of imported invoices.|
|Use scanning date as posting date|Tick to let Dynamics 365 set the scanning date as the invoice date.|
|If blank, calculated due date based on vendor|Tick to let Dynamics 365 calculate the due date based on the vendor setting.|
|Update due date on PO header change|The terms fields are Terms of payment, Method of payment, Payment specification and Cash discount.|
|Use posting date as invoice date|Check mark to use the scanning date as the document date. Note – this parameter and "Use scanning date as posting date" should not be used together.|
|Use scanning date as invoice date|Use date of scanning as document date.|
|Default line type|Select default line type at import when line interpretation is not in use.|
|Vendor duplicate check|If multiple vendors are found when an invoice is imported, a warning message appears, and no vendor is populated. This is commonly used when a company uses factoring.|
|Enable advanced vendor identification check|When this setting is switched on advanced vendor identification can be used and setup for example based on a telephone number from the invoice to find the correct vendor.|
|Message for validation of XML field PayToAccount|Four different selections are available for this parameter:<br/> **None**: ExFlow will not validate the PayToAccount field imported through the XML file.<br/> **Warning**: Imported invoices with a different bank account number or missing PayToAccount field will trigger a pop-up warning. <br/> **Exception:** Imported invoices with a different bank account number or missing PayToAccount field will not be posted.<br/>**Exception allow blank:** Imported invoices with a different bank account number PayToAccount field will not be posted. If PayToAccount field is blank, it is possible to post invoices.|
|Get payment id from vendor if empty|Get payment id from vendor if empty.|
|Copy default dimension from vendor / main account|If default dimensions should be copied from the vendor or main account when a new line is added in the ExFlow import form, document form or in the ExFlow web.|
|Fetch third party bank accounts based on invoice currency|If the third-party bank account should be based on the currency that is set in the data for the current invoice.|
|Validate coding from Excel/invoice data file import|When invoices lines are imported via a CSV or Excel file, this setting controls if it is allowed to import lines with values that do not correspond with the current account structure.|
|Allow invoices with zero amount|For Italy localization.|
|**Cross company** - Enable move to company|Tick to activate workflow "Move to company". Based on the criteria set up in the workflow all invoices that match the criteria will be moved to the desired company within the same Dynamics 365 database.|
|**Reference person** - Misc field 10-> Reference person|If the reference field is blank in import form and this parameter is ticked the value from the field in Misc 10 will be copied into the reference field.|
|**Attributes** - Enable import attributes|If enabled the tab "Attribute value tab" will be visible in ExFlow form "Setup for automatic postings". This functionality is used to import data on the line level for cost account invoices for example if a ledger account, dimension values, tax settings etc. can be found in the XML file. This new functionality will in the future replace the existing function "Coding lines for import".|

| Transaction text | |
|:-|:-|
| Show journal description in import form | If the journal description field should be displayed in the Import form. If it is not changed or left blank, the vendor's name will be saved as the transaction text.|
| Text | In this field the string is built that will present the description information. The max length that can be used is 60 characters. The string is built using % between each used ID from the grid. For example %1-%2-%3-%4-%5-%6, %7 will include all setup fields from the grid. |
| New | Add a new line. |
| Delete | Delete a line. |
| Id | The id used to build the text string. |
| Reference description | The description field can be built by a combination of the fields; Vendor account, vendor name or group, invoice number, organization number, Tax exempt or DUNS number, vendor group description, agreement number, misc.7-10, reference or Voucher number.|
| Standard max length | This field display's the max length of the standard field.|
| Use length | This field is used when building the description string to be able to shorten the used characters for the current field. Since the original transaction field is only holding 60 characters the values will be automatically shortened. |

### Sales tax
![Graphical user interface, application Description automatically generated](@site/static/img/media/image5.png)

| Sales tax  | |
|:-|:-|
|**Tax calculation**<br/>Tax calculation framework| **To enable this feature;** Navigate to ExFlow AP - Setup - General Parameters - Feature management, Activate the Tax caclulation framwork.<br/> **If turned off;** Old display method approach will be used.<br/> **If turned on;** The new calculation method with support for Tax calculation service takes place, that can be configured through "Calculation method" and "Display method".|
|Calculation method|The calculation method lets you decide whether which tax calculation method to use the per legal entity.<br/>**Standard;** Use standard D365FO tax setup.<br/>**MS Sales Tax calculation service;** Send the transaction to the Tax calculation service.|
|Display method|The display method in ExFlow controls how changes to a transaction, which could trigger a sales tax update, are indicated.<br/> For example, if a user modifies the amount on an invoice line, ExFlow can indicate that the sales tax might be impacted, although it hasn’t yet been sent to the tax calculation service.<br/>**Standard;** If the display method is set to Standard, ExFlow will mirror how journals (such as invoice registers or invoice journals) in standard D365FO display sales tax. In this mode, the sales tax is not visible at the header or line level but can be accessed by selecting Sales tax and entering the sales tax form. This method is recommended if performance is a priority.<br/> **Indicate change;** The display method “Indicate change” will give the user a visual representation in the form that there has been made a change that might affect the sales tax calculation.<br/>**Immediately;** In this mode, the sales tax is calculated instantly based on inputs at the header and line levels. For example, changes to the amount, sales tax group, item sales tax group, or sales tax code will immediately trigger a sales tax calculation for the invoice line. Available with calculation method “Microsoft Sales Tax Calculation”.|
|**Sales Tax**<br/>Default Item sales tax group | When import expense invoice, Select the default item sales tax group to use.  |
|Time of sales tax posting | Information of when the sales tax is posted, display from accounts payable pararmeters.|
|Adjust VAT in Invoice approval journal|Enable if ExFlow should handle the VAT difference between the VAT registered and the VAT allocated to invoice lines to be posted in invoice journal.|
|Allocate tax difference percent| Used in combination with "Adjust VAT at approval". If ExFlow should automatically handle the difference between the invoice register VAT and the calculated VAT in invoice approval based on percentage. |
|Allocate VAT difference if less than (percent)| Set a percentage for how large a VAT difference amount ExFlow should automatically handle.|
|Allocate tax difference amount | Used in combination with "Adjust VAT at approval". If ExFlow should automatically handle the difference between the invoice register VAT and the calculated VAT in invoice approval based on amount. If both are used the lowest value will be used.|
|Allocate tax difference if less than (amount)| Define the max amount of VAT difference amount that ExFlow should automatically handle (in accounting currency). |
|Validate tax difference for invoice register posting| Validate tax allocation for invoice register, is equal to the total lines tax and taking in consideration the parameter "Adjust VAT at approval" and "Allocate VAT difference".|
|Show extended VAT information on lines| If extended VAT information should be visible on the lines - this is only used if line level VAT is used. |
|Use calculated sales tax if blank from OCR for PO invoices | Enable If use calculated sales tax if scanned value is blank for PO invoices.|
|Enable sales tax amount in third currency | If the sales tax amount should be displayed also in a third currency. Enables new fields in import and docuemnt form.  |
|Validate sales tax groups on invoice lines | If sales tax is used on line level the system can validate the sales tax groups as D365FO standard does on header level.|
|Require complete sales tax combination| Validates the sales tax combination when posting from import form and approving invoices in ExFlow web.|
|Get default item sales tax group for temporary tax  | If no item sales tax group is set on the main account, the system will suggest the item sales tax group from the parameter "Item sales tax group for line type ledger" found under the Time of sales tax posting section as a temporary value. |
|Keep sales tax groups at approval  | If you change the coding on the invoice line as an approver, the sales tax combination (group and item) will not update and current values in these fields are kept.|
|Legal entity for intercompany tax posting | Used to setup if the VAT should be deducted in the source company or in the destination company. Since by default all the journals have destination and when ExFlow post intercompany invoices via batch it must be possible to setup if source should be used.|
|Enable Date of VAT Register| Enables the Date of VAT Register field in ExFlow for other legal enities then in Eastern Europe. To be able to work with this field the functionality for "Date of VAT Register" must be switched on in feature management. |
|Validate tax exempt number  | Will validate the tax-exempt number on the invoice with the tax-exempt number on the PO. Only valid for PO invoices.|
|Keep tax group/Item tax group|- If both parameters ‘Keep tax group’ and ‘Keep item sales tax group’ is disabled, both the sales tax group and item sales tax group set on the main account will be inherited on the ledger line when coding.<br/> -If both the parameters ‘Keep tax group’ and ‘Keep item sales tax group’ will be enabled, ExFlow will keep both sales tax group and item sales tax group although coding is changed. - If both the parameters ‘Keep tax group’ and ‘Keep item sales tax group’ will be enabled, ExFlow will keep the tax groups both sales tax group and item sales tax group although coding is changed.<br/> -If ‘Keep tax group’ is enabled and ‘Keep item sales tax group’ is disabled, ExFlow will only keep the sales tax group and will inherit the item sales tax group set on the main account if coding is changed and vice- versa.|
|Intercompany line VAT calculation|
|Override purchase tax|Enbale to allow override on the purchase tax on Purchase order invoices. |

| Time of sales tax posting |- Approval|
|:-|:-|
| Add item sales tax group in approval journal | Populate the above default values in the invoice approval journal.  |
| Item sales tax group for line type ledger  | Set a default item sales tax group for ledger lines in the invoice approval journal.    |
| Item sales tax group for line type project                 | Set a default item sales tax group for project lines in the invoice approval journal. |
| Item sales tax group for line type fixed asset | Set a default item sales tax group for fixed asset lines in the invoice approval journal.  |
| Override purchase tax  | If switched on the system will set the checkbox "Override purchase tax" on import form to yes (the checkbox is also accessible from document form). The system will use the VAT from the invoice on purchase order lines instead of using the VAT coding from the purchase order lines when a purchase order invoice is finally posted. Supported line types for this functionality are item and charges lines. |

### Project
![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image6.png)

|Project settings| |
|:-|:-|
|Fetch approver for project invoices|Set sales manager, project manager or project controller as the Reference, based on the project id from an imported invoice.|
|Validate account structure for project lines|If approvers in the ExFlow web are allowed to change dimension values for project lines, this setting validates the dimension combination with the used account for the project against the account structure setup.|
|Keep project dimensions values|When an approver changes a project id, standard blank out all the dimension values. If this parameter is set the values will remain if not the new project id in combination with a project category has default dimensions.|
|Merge project and line|If "Keep project dimensions" is ticked, this parameter is activated, giving you the choice to merge dimension values from the project with values on the line. If not ticked, only values from the project will be used.|

|Project intercompany parameters| – All parameters are mandatory to set up|
|:-|:-|
|Posting profile|Create your own posting profile to use with project intercompany transactions. Recommended setup is to use the same summary account as used in Default procurement category (for reconciliation purposes).|
|Reversing entries|The daily journal to use for reversal of the project intercompany transaction when posting the invoice in invoice approval journal.|
|Default procurement category for project|The default procurement category used for the intercompany project transaction. Recommended setup is to use the same connected account as used in the project intercompany posting profile (for reconciliation purpose).|
|Intercompany account|The account coding string used in invoice approval journal to set the project intercompany posting. This ledger posting simulates the pending invoice posting carried out in standard D365FO when posting project intercompany transactions.|

### Fixed assets
![Graphical user interface, application Description automatically generated](@site/static/img/media/image7.png)

| Fixed asset settings| Description |
|:-|:-|
| Keep fixed asset dimensions | When an approver changes a fixed asset id, standard ExFlow also deletes the remaining dimension values. If this parameter is set, the values will remain - unless the new fixed asset id in conjunction with the book has default dimensions. |
| Merge fixed asset and line  | If "Keep fixed asset dimensions" is ticked, this parameter is activated, giving you the choice to merge dimension values from the fixed asset with values on the line. If not ticked, only values from the fixed asset will be used.|

### Purchase order
![Graphical user interface, application Description automatically generated](@site/static/img/media/image8.png)

| General| Description |
|:-|:-|
|**Get purchase order lines**<br/>- Auto get purchase order lines| Enable if only the invoice header information is imported, and you wish for ExFlow to suggest coding of the invoice by retrieving the item lines of the referenced purchase order.|
|Auto get purchase order charges| Enable if only the invoice header information is imported, and you wish for ExFlow to suggest coding of the invoice by retrieving the charge lines of the purchase order referenced in the invoice header. ***Only charges with Compare purchase order and invoice values field set to Yes will get retrieved.*** |
|Set invoice on hold if no PO found| If set to yes, invoices that are imported with purchase order numbers that does not match any purchase order in D365FO, will automatically be set on Hold in ExFlow Import form |
| Allocate difference amount between header and lines | Allocate balance difference between header and lines to lines automatically or a specified charge code.|
|**Show Inventory Dimensions**<br/>- Show inventory dimensions| Enable to display purchase order inventory dimensions in ExFlow forms.|
|**Line Item Charges**<br/>- Line item charges| Set to yes if line item charges should be used. |
| Line item charges attributes| Set to yes if line item charges should be imported via file within the attributes functionality.|
| Include line charges in line amount | If the charges amount should be included in the line amount when used for workflows checking approval limits or when the approval amount control is used to include the line charge amount.|
| Max line charge amount|The fallback parameter for the total amount of line charges that should get automatically approved if the sum of all line charges that are the same and are below this amount.|
|**Use specific Packing Slip Connection** |Enables the functionality to connect specific packing slips.|
|**Copy Dimensions from Purchase Order**<br/>- Copy to account dimensions| If set to Yes - the default values on the purchase order will be copied to the header account financial dimensions on the invoice. |
|Copy to offset dimensions|If set to Yes - will copy the default dimensions from the purchase order to the offset account on the invoice.|
| Override charge dimensions| Set this to Yes if you wish to be able to override the charge dimensions on PO invoices. |

| Penny difference |Description|
|:-|:-|
| Maximum penny difference | The maximum penny difference that ExFlow shall add at scanned import, if the line sum and header net sum differ. |
| Charge code for penny difference | The standard charge code that the penny difference should be posted with.|

| Charges from invoice for auto approval | Description |
|:-|:-|
| Charge 1 from invoice | If header charges are included in the XML file, set the charge code 1 and it will be added automatically to the invoice at scanned import. |
| Charge 2-5 from invoice | Another four invoice header fields that can be predefined in the same way as Charge 1 above. |

| Matching - |*These settings control if an invoice line shall be directed to manual approval (via the approval route) or if standard D365 FO matching settings will be applied.* |
|:-|:-|
| **Tolerance level for system approval** -Max total invoice amount|  The maximum invoice total amount that can be matched according to the settings in standard Dynamics 365. If above the limit, it will always be routed for manual approval. |
| Max line amount| The maximum line amount that can be matched according to the settings in standard Dynamics 365. If above the limit, it will always be routed for manual approval.  |
| Max total charge amount for all lines | The maximum charge amount that can be matched according to the settings in standard Dynamics 365. If above the limit it will always be routed for manual approval. The setting is per type of charge. |
|**Auto match purchase order invoices of arrival of goods**- Number of days before release of quantity variance invoices| Number of days before release of purchase order invoices for approval if matching status is "quantity variance" (therefore having a status of "On hold"). This setting is used in combination with the periodic job "Auto match purchase order invoices on arrival of goods". |
|**Prematch**- Run pre-match and suggest approvers together in import form | If switched on the suggest approver function will run at the same time when the pre-match function is run.|
|Re-run suggest approver at invoice register posting| To run this job at the time of posting of invoice register, ensures that the approvers are set based on the latest matching status.|
|**Variance amount**- |Variance criteria's in workflow and matching details| Enabels the criteria´s for variance matching in ExFlow workflows and activates matching details form for PO.<br/> Read more; https://docs.signupsoftware.com/finance-operations/docs/user-manual/Workflows/workflows/workflow-for-variance-amounts#workflow-for-variance-amounts|

| Posting | Description |
|:-|:-|
| Posting profile PO invoices| The standard posting profile that should be used with invoice registration. If none is chosen, the default posting profile is used. |
| Posting of PO invoices requires lot-id | PO invoices must have a Lot-id to be able to make the preliminary registration. |

| Get reference from orderer | Description |
|:-|:-|
| Fetch approver from PO |Choose from where the reference field in import form will be populated to fetch 1st approver for PO invoices.|
|Fetch approver primarily from PO instead of reference table | If enabled, ExFlow will fetch the Worker from the Purchase Order to use as the invoice Reference, instead of fetching directly from the Reference person form.|

### Posting logic
![Graphical user interface, application Description automatically generated](@site/static/img/media/image609.png)

|Invoice parameters| Description |
|:-|:-|
|Journal name for invoice registration|Journal name to be used for the created invoice register journal.|
|Journal name for final approval of invoices|Journal for the invoice approval journal to be used for final posting. If left blank first invoice approval will be used.|
|Journal name for canceled invoices|Mandatory, the journal that is used when a registered invoice is cancelled via ExFlow (the same journal for posting invoice register invoice can be used, but not recommended).|
|Default approved by|Select the default approver for the standard invoice register journal field "Approved by" in the import invoices form (header)."Approved by" is automatically updated from the ExFlow parameter "Default approved by" when the periodic task "Import OCR" is triggered. If the Import action is triggered manually in import form by an user, the user's own worker will be applied instead.<br/> **NOTE!** Parameter is mandatory for the Direct posting process.|

|Posting date adjustments| Description |
|:-|:-|
|Change posting date based on module status|If the posting date of the invoice corresponds to a closed period, ExFlow will automatically adjust the date to the earliest available open date in the following month.|
|Cost/purch invoice register suggested posting date| Is used for the adjustment of the posting date in invoice register form for both cost and purch invoices.|
|Cost invoice final posting suggested posting date|Is used for the adjustment of the posting date in invoice approval form for cost invoices.|
|Purch invoice final posting suggested posting date|Is used for the adjustment of the posting date in invoice approval form for purch invoices.|

**All parameters above have different options:**<br/>
All three parameters above have different options: Exflow provides flexibility in controlling the invoice posting date in invoice register and invoice approval forms through a range of selectable options in Exflow parameters setup.<br/>

|Option|Description|
|:-|:-|
|Invoice date, change to first open if period closed|Adjusts the posting date to the invoice date or to the first open period if the invoice period is closed.|
|Always Invoice date| Posting date will always match the scanned invoice date without any adjustment.|
|Always Actual date| Adjusts the posting date to the current system date when the journal is created.|
|Actual date, change to first open if period closed|The invoice posting date is set to match the system date. However, if the period for the system date is closed, then the posting date is changed to the earliest available open date in the following month.|
|Always Last goods receipt date|Adjust the posting date to the date of the last received packing slip for the linked purchase order selected in the header.|
|Last goods receipt date, change to first open if period closed|Adjusts the posting date to the last goods receipt date of the purchase order or to the first open period if the receipt period is closed.|

|Ledger accrual|Description|
|:-|:-|
|General journal name|The journal that is used to create ledger accrual transactions.|
|Date for currency exchange rate|If the exchange rate should be calculated based on the posting date of the invoice or the transaction date of the invoice register transaction.|
|Select main account for the accruals of ExFlow invoices| Is used as a summary account for the ledger accrual posting. For more details see https://docs.signupsoftware.com/finance-operations/docs/user-manual/periodic-batch-jobs/accrual-of-estimated-costs |
|Use invoice currency|If the local currency of the invoice should be used in generation of the accrual line in the journal.|
|Accrue project lines using project type|When running the ExFlow ledger accrual report this setting will instead of suggesting the underlying account based on the used project category use the actual project in accrual journal.|

|Localization|Description|
|:-|:-|
|Always update voucher number|When is enabled the voucher number will be updated from the final approval journal at final posting.<br/>When standard changes the voucher number it will use the voucher series specified on the final approval journal. The solution is to always use this same logic if the parameter is enabled. So it dosen't matter if period is closed - you will always fetch a new voucher.|

|Override ExFlow default dimensions|Description|
|:-|:-|
|Override ExFlow default dimensions with approval journal dimensions|If the journal used for invoice approval journal is set up to use default dimension values, then the dimensions set in the ExFlow web for project lines should overwrite the default journal dimensions.|

### Approval
![Graphical user interface, application Description automatically generated](@site/static/img/media/image9.png)

|Approval parameters|Description |
|:-|:-|
|Allow changes to suggested approval route by D365 user|Enable if the user in Dynamics 365 is allowed to manipulate the suggested approval route.|
|Minimum number of unique approvers|To enable the "four eyes principal". Approval of an invoice must have at least this number of different approvers.|
|Enable dynamic approval rules|If users are authorized to manipulate approval routes (either AP personnel or approvers), and changes are made (i.e., change of coding or adding approvers manually) that should affect the approval route, ExFlow will reset the approval route when: <ul><li>When pushing the "Suggest approvers" button in Import form or Document form.</li><li>When approving an invoice on the ExFlow web or in "My vendor invoices".</li></ul> If enabled, the following parameters become available:|
|Add same approver from different rule|If a change in coding initiates a new workflow with an approver that earlier in the route had already approved the line, should this approver be added to the route once again? Tick if yes. Leave unticked if the previous approval is sufficient. Please note – this is not supported when using standard position hierarchy workflow.|
|Keep original last approver|If a change in coding initiates a new approval route, shall we keep the original last approver despite the new coding setting?|
|Add same approver after current if forwarded|If set to Yes – it will automatically add the current approver, that forwards the invoice as the next approver after the "Forwarded to" approver: <ul><li>Bengt forwards invoice to Maria.</li><li>Bengt is automatically set as the approver after Maria has approved.</li></ul>|

|Approval logic| Description |
|:-|:-|
|Method for suggesting approvers|Approval routes can be based on different methods. <br/><br/><u>Position hierarchy:</u><br/>Approval routes are based on a position hierarchy only, in combination with the reference (optional) of the invoice.<br/><br/><u>Standard workflow:</u><br/>Approval routes are based on workflow only, in combination with the reference of the invoice. Reference is the typical field used; however, many other fields may be used in the workflow configuration.<br/><br/><u>Both (Workflow and Position Hierarchy):</u><br/>The system will first try to get a match on the approval workflow and continues to position hierarchy if no approvers are found in workflow.<br/><br/><u>Use workflow to find specific position hierarchy:</u><br/>The system will use a workflow rule to determine which position hierarchy to be used using the "Find position hierarchy" workflow. For example, if there is a purchase order number, use one hierarchy and if there is no purchase order number use another hierarchy.<br/><br/><u>Both standard workflow and find position hierarchy:</u><br/>The system will first try to get a match on the standard approval workflow, and if no match continues to find and use a position hierarchy using the "Find position hierarchy" workflow. In other words, if no standard approval workflow is found, revert to the above setting "Use workflow to find specific position hierarchy".<br/><br/><u>Advanced workflow:</u><br/>The system will use the advanced approval engine that extends the options of using dedicated workflows (i.e., standard workflows) with specific name driven approvers or fixed position hierarchies. The purpose of the advanced approval engine is to be more flexible than the standard way of adding approval routes, to enable data driven approval and to create something from scratch that is easily extended without the patchwork nature that the current versions have. For more information, please contact Signup Software AB.|
|Cross company search for workflow to find position hierarchy|If ticked, the system will look in all companies with this parameter ticked to find a workflow to determine the position hierarchy to use. If it finds multiple workflows, the first will be used. If not ticked, the system will only look for the workflow in the current company.|
|Hierarchy name for approval route|Set which hierarchy is to be used to find the correct approval route. This setting is not used when using the "Use workflow to find specific position hierarchy" options.|
|Fetch the first approver from|Determine where the system shall fetch the first worker/approver: either from the Reference field in the Import form or fetch the worker from the financial dimension "Worker".|
|Enable users individual approval amount|This setting controls the individual approver’s signing limit before an approval can be made from the approval form. The setting for the users’ signing limits is done in the ExFlow "Users" form in Setup. This applies Signing limits over and above what may be set up in standard workflows, or if used by itself provides a simple signing limit rule regardless of other criteria such as the coding.|
|Reviewer|If set to yes – you have the possibility to choose to have users as reviewers, i.e., the user will receive the invoice in the approval flow, but the approval of the reviewer will not count as a formal approval.<br/>**Please note** – a reviewer cannot approve the invoice if he/she is the last approver. This is valid for standard workflow, position hierarchy and advanced workflow.|


| Advanced workflow options - This sections setting is used for the new advanced approval engine |Description  |
|:-|:-|
| Return only first and last approver                                                            | If for example 4 approvers are found the system will only suggest the first and the last approver.                                                                   |
| Add parent approver if only one is found                                                       | If only one approver is suggested if for example the approver has the correct signing limit the next approver is automatically added to fulfill four eyes principal. |
| Remove duplicate from the approval list                                                        | If approvers are added twice due to several matching criteria the duplicates are removed.                                                                            |
| Minimum number of approvers for posting from import form                                       | A check that validates the minimum number of approvers before an invoice is posted in ExFlow import form.                                                            |


|Position hierarchy logic|Description |
|:-|:-|
|Add parent approver if only one approver found|Adds a second approver to meet the (e.g., SOX) rules if only one approver is found based on the approval limits.|
|Only first and last approver of position hierarchy are added|When Position hierarchy is used to find approval routes, this setting will only return the first and last approvers from the approval chain.|
|Position hierarchy logic based on owner of dimension|Tick if the Owner of the dimension set in the below parameter should be used to determine the first approver. The owner is set up in General Ledger / Setup / Financial Dimensions / Values / Owner field.<br/>If there is a reference on the invoice, the dimension owner will be the 2<sup>nd</sup> approver. If there is no reference, the dimension owner will be the 1<sup>st</sup> approver.|
|Dimension|Select which dimension should be used if above parameter is enabled.|
|Position controlled by financial dimension|If set to "Yes" this will fetch owner of financial dimension|
|Approval based on invoice header or line amount|Select whether the approval route should be based on the Invoice line amount or the total invoice amount. E.g., if invoice is coded to IT for $250 (Approver 1’s limit) and HR for $300 (Approver 2’s limit), if set to "Invoice Amount", Approver 3 will also be added, who has a limit of $550+|

|Escalation|Description |
|:-|:-|
|Escalate to|This functionality is working in combination with the periodic batch job "Escalation". See more under https://docs.signupsoftware.com/finance-operations/docs/user-manual/periodic-batch-jobs/escalation.<br/> Escalate to this user or user group if no next approver can be found or an extra approver is required. Leave blank if the invoice shall follow the approval chain. **Note**; Advanced approval workflow needs to be active with position hierarchy selected|
|Days|Number of working days before an invoice is escalated.|
|Extra approver when escalating invoice|If an extra approver always should be added if an invoice is escalated. **Note**; Advanced approval workflow needs to be active with position hierarchy selected||

**Examples of the Escalation parameters are as follows**:<br/>**Example 1**<br/>Escalate to: "Axuat01"<br/>Days: 5<br/>Extra Approver: Unticked.<br/>Advaced approval workflow active with position hierarchy selected.
- Initial invoice is Axedu03(current) -> Axuat05(none)
  - 5 days without user Axedu03 approving - invoice is escalated
  - Axedu03*(approved) -> Axuat05(current)
  - 5 days without Axuat05 approving - invoice is escalated
  - Axedu03(approved) -> Axuat05*(approved) -> Axuat04(current) added from the advanced approval workflow.
  - 5 days without Axuat04 approving
  - Axedu03(approved) -> Axuat05(approved) -> Axuat04*(approved) -> Axuat02(current) added from the advanced approval workflow.
  - 5 days without Axuat02 approving
  - Axedu03(approved) -> Axuat05(approved) -> Axuat04(approved) -> Axuat02*(approved) -> Axuat01(current) Added from parameter setup, escalate to.
  - When the top is reached the escalation will end and leave the last approver as current.

**Example 2**<br/>Escalate to: "Axuat01"<br/>Days: 5<br/>Extra Approver: Ticked<br/>Advaced approval workflow active with position hierarchy selected.
- Initial invoice is Axedu03(current) -> Axuat05(none)
  - 5 days without Axedu03 approving - invoice is escalated
  - Axedu03*(approved) -> Axuat01(current) added from parameter setup (extra approver ticked) -> Axuat05(none) 
  - 5 days without Axuat01 approving - invoice is escalated
  - Axedu03(approved) -> Axuat01*(approved) -> Axuat04(current) added from advanced workflow -> Axuat05(none). 

**Example 3**<br/>Escalate to: &lt;&lt;blank&gt;&gt;<br/>Days: 5 days<br/>Extra approver: disabled or enabled.<br/>Advaced approval workflow active with position hierarchy selected.
- Initial invoice is Axedu03(current)
  - 5 days without Axedu03 approving
  - Axedu03*(approved) -> Axuat02(current) added from advanced approval workflow.
  - When the top is reached the escalation will end and leave the last approver as current.

![medium](@site/static/img/media/image564.png)

|Post Control| Description |
|:-|:-|
|Enable post control|Activate post control which will require that the accounting personnel will approve all invoices before they can be finally posted in the invoice journal. This final validation is performed in ExFlow / Common / Final approval.|
|Include purchase orders|If purchase order invoices should be included in the post control process.|
|Time of post control check|This setting controls when the post control shall be triggered.<br/>**Invoice register**: Triggered after an invoice is invoice registered and sent out for approval.<br/>**Last invoice line to be approved**: Triggered after the invoice has been finally approved.<br/>**Both**: Triggered in both above scenarios.|
|Allow manual posting, without post control|If the user should be able to manually post an invoice via the invoice journal or manual posting of PO invoice from document form without first approving the invoice in post control.|
|Allow corrections|Allow corrections in the post control form.|


|Agreements|Description |
|:-|:-|
|Use purchase agreements|Enable if agreements (contract management and self-invoicing) functionality should be enabled.|
|Default matching error policy|Used for determining what policy that should be used when an agreement and invoice is matched whether it should be automatically approved or sent out for manual approval. Optional choices are If greater than tolerance or if greater than or less than tolerance.|
|Self-billing invoice document type|If contract management and self-invoicing is used a document type must be set for the system to be able to create self-billing invoice image.|

|Override approval|Description |
|:-|:-|
|Max approval override amount|The maximum amount for which a clerk can override an approval of in ExFlow import form. To be able to set this amount you must have system administrator rights.|


### Prepayment and settlements
![Graphical user interface, application Description automatically generated](@site/static/img/media/image10.png)

| Prepayment and settlements tab |Description |
|:-|:-|
|Enable prepayment |Enable if prepayment functionality should be used. |
|Method to avoid duplicates| Choose which payment method to be used to avoid duplicates.|
|Authorized vendors only | Used in combination with settings in "Setup for automatic postings" - "Vendors for prepayment" tab. Enable this setting if the system should verify the vendor setup to which vendors are allowed to use with prepayments.|
|Allow settlement at import| Enable if you would like to work with automatic settlement between debit/credit invoices. |
|Authorized vendors only| Used in combination with settings in "Setup for automatic postings" - "Vendors for credit settlement" tab. Enable this setting if the system should verify the vendor setup to which vendors are allowed to use with automatic settlements.|
|Max invoice amount | The max invoice amount that is allowed with automatic settlement for debit/credit invoices.|
|Maximum difference percentage| The maximum difference in percentage that are allowed between the debit and credit invoice for a settlement to be carried out.|
|Maximum difference amount| The maximum difference in amount that are allowed between the debit and credit invoice for a settlement to be carried out.|
|Debit invoice retain coding| If the parameter “Debit invoice retain coding” is set true (Yes) then the lines will retain the coding making the invoice an exact copy. If it is set to false (No), the invoice should be created with the same lines as the original invoice but without coding.|
|Display reason comment| If enabled, it is mandatory to add the reason comment.|


### Email notification - Deprecated feature
This feature has been marked as deprecated. Please contact your ExFlow partner for further details.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image11.png)

### Number Sequences
To handle unique identification number in import table document table, this has to do with the entities and to support multi-threading.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image12.png)

