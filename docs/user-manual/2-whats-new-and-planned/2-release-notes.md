---
title: Release Notes
sidebar_position: 2
hide_title: true
custom_edit_url: null
---

## Release 2.16.4
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>
A new version of ExFlow AP for Microsoft Dynamics 365 for Finance and Operations has been released as of March 2025.
This document outlines the key enhancements, corrections, and improvements featured in this major update. This release includes our new subscription module, released in ExFlow AP 2.14, enabling users to conveniently purchase functionality subscriptions directly from the Azure Marketplace.

#### Version numbers
The described release in this document supports the following versions.

| Dynamics 365 for Finance and Operations Platform version | Dynamics 365 for Finance and Operations application version  | ExFlow AP version |
| ----------- | -------------- | -------------- | 
| Update 65 (7.0.7367.49) or later | 10.0.41 (10.0.2015.54) | 2.16.4|


**RELEASED IN 2.16.4**
#### Improvements
**46193** We have added one more parameter method to the object EXF_cWorkerHierarchyApprovalChain to make more extensions possible.

#### Corrections
**45598** Activation of a structure in Advanced workflow approver on financial dimension could fail when there were common segments with Allow blank values.<br/>
**46133** Due to a change in the data source record lookup within the forms Import and Document Form an extensive query was performed which could cause an AOS failure.<br/>
**46359** When an invoice had both debit and credit lines, the lines were not transferred correctly to the Invoice Journal, when running with Direct Postings.<br/>

___________________________________________________________________________________________________________

###  Release 2.16.2
#### INTRODUCTION
A new version of ExFlow AP for Microsoft Dynamics 365 for Finance and Operations has been released as of February 2025.
This document outlines the key enhancements, corrections, and improvements featured in this major update. This release includes our new subscription module, released in ExFlow AP 2.14, enabling users to conveniently purchase functionality subscriptions directly from the Azure Marketplace.

#### Version numbers
The described release in this document supports the following versions.

| Dynamics 365 for Finance and Operations Platform version | Dynamics 365 for Finance and Operations application version  | ExFlow AP version |
| ----------- | -------------- | -------------- | 
| Update 65 (7.0.7367.49) or later | 10.0.41 (10.0.2015.54) | 2.16.2|


**RELEASED IN 2.16.2**
#### Improvements
**42938** As part of the Microsoft deprecation of old blob storage libraries in 10.0.43 we have migrated all functions in ExFlow using blob storage to use the new recommended library Azure.Storage.Blob.

#### Corrections
**45507** Post Controlled invoices where not picked up correctly in the final posting batch jobs when working with the Direct Postings.<br/>
**45514** When activating the standard D365 workflow for vendor invoices also the ExFlowi invoices were considered when working with Direct Postings.<br/>
**45534** When uploading XSLT files to our XSLT repository under the import methods the characters where decoded which caused the function to generate images to fail.<br/>


___________________________________________________________________________________________________________

### Release 2.16.1

#### INTRODUCTION
A new version of ExFlow AP for Microsoft Dynamics 365 for Finance and Operations has been released as of January 2025.<br/>
This document outlines the key enhancements, corrections, and improvements featured in this major update.
This release includes our new subscription module, released in ExFlow AP 2.14, enabling users to conveniently purchase functionality subscriptions directly from the Azure Marketplace.

#### Version numbers
The described release in this document supports the following versions.

| Dynamics 365 for Finance and Operations Platform version | Dynamics 365 for Finance and Operations application version  | ExFlow AP version |
| ----------- | -------------- | -------------- | 
| Update 65 (7.0.7367.49) or later | 10.0.41 (10.0.2015.54) | 2.16.1|


**RELEASED IN 2.16.1**
#### Corrections
**43632** The checkbox Has chat was not always populated when a chat message was added.<br/>
**45012** We have made a change to the upgrade scripts fillTaxUncommittedImport and fillTaxUncommittedDocument.<br/>
**45203** A new entity introduced in 2.16 caused the Open in Microsoft Office functionality to not working due to a name conflict.<br/>
**45065** The report Invoices did not return any search result due to a change in 2.16.<br/>
**45207** The Correct invoice functionality in Post control did not work properly when running with Direct Postings.<br/>
**45229** The exchange rate was not updated properly during the final posting in the approval journal due to a correction done in 36199 included in 2.16.<br/>

__________________________________________________________________________________________________________

### Major Release 2.16.0

#### INTRODUCTION
A new version of ExFlow AP for Microsoft Dynamics 365 for Finance and Operations has been released as of December 2024.
This document outlines the key enhancements, corrections, and improvements featured in this major update. This release includes our new subscription module, released in ExFlow AP 2.14, enabling users to conveniently purchase functionality subscriptions directly from the Azure Marketplace.<br/>

#### Version numbers
The described release in this document supports the following versions.

| D365 FO Platform version | D365 FO application version nb | ExFlow version nb |
| ----------- | -------------- | -------------- | 
| Update 65 (7.0.7367.49) or later | 10.0.41 (10.0.2015.54) | 2.16.0 |

#### NEW FUNCTIONALITY
**Direct postings**<br/>
39677 We have added support in ExFlow AP to post invoices directly against Pending Vendor Invoices and Invoice Journal.<br/>
This removes the pre-requirement to setup and work with the invoice register process inside F&O.<br/>
Related tickets: 40193, 40222, 40353, 40354, 42479, 42981, 43024, 43281, 43283, 43286, 43375, 43708, 43709, 43949<br/>

**TMS Freight Bill**<br/>
22030, 40059 We have added support for Freight invoices that can be processed through Transportation Management.<br/> 
This functionality is dependent on the new Direct posting functionality.<br/>

**Procurement categories – matching tolerances**<br/>
36547 We have extended the matching tolerances that exists in F&O and added tolerances when working with Procurement Categories like the ones that exists for Items.<br/>

**This functionality also includes;**
- Amount tolerances for item matching.<br/>
- Matching policy as part of tolerance setup for item matching.<br/>
- Made the extended price matching setup more detailed.<br/>

#### IMPROVEMENTS
**AI/ML**<br/>
As part of the release, we have made several changes and added more functionality around the AI/ML functions within ExFlow AP.<br/>

3860, 41628 We have added more functionality to our new AI/ML service that is used in combination with ExFlow Web.<br/>
41100 We have extended the internal function Automatic invoice coding with the line type Procurement.<br/>
43381 We have created a separate model called ExFlow Copilot that includes Copilot summaries on ExFlow AP forms.<br/>

**Approval object**<br/>
We have as part of this release extended the new approval object in the below areas and added more validations around the setup to avoid confusion.<br/>
40577 We have extended the header information in the Approver workflow log.<br/>
41152 We have added extra validations when adding legal entity overrides in Approver workflow rules.<br/>
41159 We have added a warning message when approvers were not found when pressing Suggest approver.<br/>
41168 We have added more validations in Approval workflow setup to prevent invalid configurations.<br/>
41238 We have added a log message in the Approver workflow log when approving from My vendor invoices.<br/>
41239, 43659 It’s now supported to work with My vendor invoices in combination with the new approval workflow.<br/>
41341 We have added support for the functionality to Assign only to last user retrieved.<br/>
41361 We have added support for the functionality to work with Reviewers.<br/>
41363 We have added support for the functionality to work with ExFlow dimension owner.<br/>
41364 Forwarded users were filtered out incorrectly when suggesting approvers in Document form.<br/>
41365 We have added support for the variance amounts.<br/>
41402 The rule "Filter sequence list" was not implemented completely in Import form.<br/>
41433 We have added the rule Remove already existing approver to the wizard.<br/>
42929 The order of the Approver workflow rule groups has been restructured to ensure the "Add parent approver if only one approver found" rule works correctly.<br/>

**Sales tax framework**<br/>
We have as part of this release extended the sales tax framework in the below areas.<br/>
40957 We have made a technical redesign on how to work with Use Tax and Reverse Charge scenarios in combination with the new tax framework that was introduced in release 2.15.<br/>

**Workflow**<br/>
As part of the release, we have made several changes and added more fields to use in the workflow conditions.<br/>
18692 We have added a new method in the Import validation and Action workflows to compare the difference between calculated line sales tax and header sales tax. This function is dependent on the tax framework functionality.<br/>
33989 Technical enhancements have been implemented for action workflows, consolidating common actions in the code.<br/>
35487 We have added support to bypass vacant positions in the position hierarchy and continue with next position instead.<br/>
36522 We have added functionality in action workflow to send out external emails based on vendor account address.<br/>	
38891 We have implemented support to handle date comparison in our workflows.<br/>
40217 We have made a change to signing limits specified on Advanced workflow approver on financial dimension to work as absolute values.<br/>

**Vendor statement**<br/>
As part of this release, we have made several changes and added more functionality into the vendor statement functionality.<br/>
41738 New columns added for vendor name to Statement form and Reconciliation form.<br/>
41739 We have improved the validation checks between the from date and the minimum date imported from the statement lines.<br/>
41740 We have improved the validation for due date. The Due date is only a relation to the invoice due date and shall not be validate against to date.<br/>
41743 The statements are now editable if the status is open. It’s open for change of dates, amounts and add/remove lines. If the status of the statement is reconciled, editing of the statement it not possible.<br/>
41744 The buttons for Validate and Reopen are now greyed out when the statement is Posted.<br/>
41745 A new form is created called Vendor document status. Found under ExFlow common -Inquiries and reports - Vendor document status.<br/>
The form shows transactions from the data source for vendor and payments.<br/>
The users can set the transactions as “set as fully reconciled” or “set as not reconciled”.<br/>
41746 New fields have been added in staging table and rework of logic for Vendor statement form for opening balance and ending balances.<br/> 
Opening balance amount from staging table will be added as line into the statement and can be manually match against vendor transactions. 
Settlement lines can be manually matched against more than one vendor transaction.<br/>
41747 Validation added of imported statement lines vs ending balance.<br/>
41748 Imported payment lines from statement can now be matched against open/settled vendor payments.<br/>
41749 We have improved the way of working with the reconciliation of Statements, when you finish the reconciliation work and use the button “Mark as reconciled”, you will get a question to post the statement in the same process, and don’t need to go back and post the statement from the statement form.<br/>
41750 We added the possibility to manually create new statements and be able to connect them to a manual created reconciliation form.<br/>
41751 Rework is done for the matching of vendors within import. We added the same logic and additional criteria’s as for ExFlow AP Vendor identifier rule functionality.<br/>
41755 Rework is done for the Reconciliation report- Label and format changes, removed unnecessary information to do the report cleaner and more understandable.<br/>

#### Various
12152 We have added filters to the ExFlow user creation wizard.<br/>
15862 We have added functionality in the lookup functionality in ExFlow Web to hide suspended dimension values for other line types than Ledger.<br/>
24122 We have made it technically possible to send out accounting distribution values to purchase order info screen in ExFlow Web. This will be implemented in a future release of ExFlow Web.<br/>
29107 The functionality to work with summarized lines have now been extended to also work with purchase order invoices.<br/>
29850 We have renamed the field for accrual starting date from Transaction date to Start date.<br/>
31045 We have made it possible to view invoices in Import Form through the image URL exposed in entities.<br/>
31195 We have added one more option for the validation of PayToAccount. The new method is called Warning allow blank.<br/>
36770 We have made the core ExFlow AP tables available for AllowRowVersionChangeTracking.<br/>
37877 We have added an extra validation for project categories to only allow expense categories to be used.<br/>
38546 We have added support to specify Date of VAT register for lines of type Fixed asset.<br/>
39207 We have extended the popup for pre-payment in Document Form to show the current values from the vendor transaction:<br/>
39428 We have added the possibility to select a position from the ExFlow position hierarchy in the global reference setup.<br/>
40032 We have made it possible to separate the setup for adjusting the posting date based on invoice type Cost and PO. This change is an additional change to the previous development (ticket 33652 released in 2.14).<br/>
40246 We have made it possible to extend the bank account lookup used in ExFlow AP forms.<br/>
40916 We have built support to integrate with the CO2 insight software Atmoz.<br/>
40997 We have created a new list of entities to use when running with Azure Synapse Link for Dataverse.<br/>
42415 We have added a validation message to Import and Document Form to be presented for users with the role ExFlow Purchase payable admin when the license is about to expire.<br/>
43161 We have extended the functionality to import attachments from EDC to also validate the attachments against the document handler in F&O.<br/>
43235 We have made it possible to work with withholding tax on project lines in ExFlow.<br/>

#### CORRECTIONS
16936 The option to set a logo in the broadcast email has been hidden due to incompatibility.<br/>
17791 We have addressed a limitation in Advanced workflow approve on financial dimension. An overlap error occurred when coding strings had identical values in some columns, despite having different values in the other columns.<br/>
30689 The validation against the account structure for the invoice register dimension values were not considered correctly upon posting.<br/>
31283 There was an incorrect validation made when modifying the project category.<br/>
34545 If the default security level (2) for ExFlow Web was deleted then this option still was the default value in the new user setup. This has been changed so the default value is set to an existing value.<br/>
35819 Adding a validation message when using Advanced workflow approve on financial dimension in Advanced workflow. The warning message will notify the user to check the setup or if the batch job for activation is still pending.<br/>
36199 We have changed how exchange rates are applied when posting intercompany invoices. The exchange rate for the reporting currency is now calculated correctly, instead of being based on the accounting currency.<br/>
37876 Upon approval from ExFlow Web the approval date field was not stored with the correct time zone.<br/>
38495 During import of a PO invoice with multiple lines and where there was a specified packing slip. In case the system was unable to find the correct po line. It used the interpreted packing slip from Import History, which could have connected the invoice line to incorrect po line.<br/>
38992 When adding a new line in My vendor invoices the line type field were left empty in case the default line type was set to Procurement or Item.<br/>
39776 The dropdown in the packing slip form also showed already invoiced packing slips.<br/>
39825 When pressing delete in Import Form the invoice was not deleted unless invoice was selected one by one.<br/>
39981 The Assigned date for approvers was editable in Document Form.<br/>
40196 Individual approver amounts are now correctly enforced when 'Separate suggest approvers from validate' is enabled for a vendor.<br/>
40227 Charges coming through header attributes were incorrectly created when charge amount was zero.<br/>
40314 We have corrected the license type assignments for the roles; ExFlow web user role and ExFlow Core. Instead of license type Team Member they were listed with the incorrect license type None.<br/>	
40328 The approval order for the approvers was not set correctly when running invoice matching together with suggest approver neither in Import Form nor during the invoice register posting. This caused the approver status to be set to None, if suggest approvers did not return any approvers.<br/>
40331 The date as base for tax calculations at line level was picked incorrectly when running with the ax calculation framework active.<br/>
40340 The project group is now possible to use within the validation for purchase order based invoices.<br/>
40368 The approval button was active in Document Form at line level even if the approver status was approved.<br/>
40412 When using separate suggest approver from validate and changing financial dimensions in ExFlow Web and then approved, the approver actually approved and moved the approval route to the next approver (proper status would have been approved and then none).<br/>
40454 When the field Date of VAT register was changed, the exchange rate was not updated correctly.<br/>
40456 We have updated the warning message when attempting to delete multiple lines in the Document form to clearly explain that at least one invoice line must remain.<br/>
40482 The reference field filter was not working properly when working with Global reference.<br/>
40605 Upon automatically approval of a landed cost line, the system incorrectly also approved other line types if the cost value was less than the estimated cost.<br/>
40629 The field UserId was incorrectly field when running the batch job Import OCR invoices to import form – threads.<br/>
40730 In entity for ExFlow columns the field Dimension name was set as mandatory.<br/>
40751 When running purchase order based invoices in ExFlow in combination with Tax calculation service, taxes were not calculated correctly on line level.<br/>
40832 When running with Tax Calculation framework it was possible to post unbalanced invoices from Import form.<br/>
40849 An error was thrown in some cases when changing the sales tax group on the header in Import form when running with Tax calculation framework active.<br/>
40875 Functionality related to line item charges was visible in the ExFlow AP forms independent on the parameter setting.<br/>
40896 We are now able to delete several lines in the Legal entity overrides grid on ExFlow dimension combination owner details form.<br/>
40952 The passwords specified on Import methods was still available through Record info.<br/>
40953 The password specified for the PDF service blob container was still available through Record info.<br/>
40958 An extra line was created in the invoice approval journal for other line types than Ledger. This was caused by a new flighting parameter from Microsoft called InvoiceApprovalNewLineForAllVoucherFlight.<br/>
40980 It was possible to create an invalid setup in the Document summarize settings.<br/>
41001 The new function to handle access to documents in ExFlow Web caused an unhandled exception when accessing or approving documents in some scenarios.<br/>
41003 Swedish translation changes.<br/>
41010 When changing the line type of an invoice lines, sometimes the stored dimension values were not properly cleared out causing them to be visible in ExFlow Web.<br/>
41011 The document date was not transferred correctly to ExFlow Web.<br/>
41022 Some of the selections within Setup for Automatic Postings did not have the option to select All.<br/>
41196 The logic that is run when cancelling an invoice in ExFlow AP has been aligned with standard F&O. Previous logic caused issues when changing the posting date based on module access.<br/>
41267 We have resolved an issue during the posting of the invoice approval journal with multiple invoices in it. The issue was caused by concurrent updates when certain payment schedules were active.<br/>
41269 Previously we had some scenarios causing the lookups at line level to show zero values in ExFlow AP.<br/>
41296 The error message shown when there is a difference between header and line sales tax have been updated.<br/>
41387 The data upgrade scripts (fillTaxUncommittedImport), have been updated with more error handling.<br/>
41394 The upgrade script for the released feature (37320) in 2.15, was not triggered automatically.<br/>
41400 Vendor transaction loses the link to the related voucher from invoice approval journal when ExFlow AP parameter “Change posting date based on module status” is turned off and ExFlow AP parameter “Suggested invoice approval posting date” is Actual date, change to first open if period closed.<br/>
41434 Improvements upon import of XML files to avoid memory exceptions when import is based on EXF_cXmlSerializer.<br/>
41562 When the ExFlow AP parameters “Auto get purchase order charges”, “Copy to account dimensions” and “Override charge dimensions” was turned on, the charge lines in ExFlow AP were created without the dimension values from the purchase order.<br/>
41567 The released feature (37320) in 2.15, added an extra validation causing previous setup with multiple values for one column (for example sales tax group) not working properly.<br/>
41597 Upon posting invoices in Import form with Agreement matching, when the total amount exceeds the max total invoice amount set for the agreement. The wrong Net amount value caused approving the invoice and not sending the invoice for manual approval.<br/>
41614 It was not possible to remove sales tax values at line level.<br/>
41651 Multiple forms were shown in the ExFlow menu, unless ExFlow were enabled in the legal entity.<br/>
41681 Cost invoices with line type Ledger were not created with the correct amount upon import.<br/>
41708 ExFlow AP parameters around certain functions affected the xml data not to always be imported if the batch job was run in a different legal entity.<br/>
41808 When displaying total line vat amount on the Import and Document Form header the tax from the intercompany lines was ignored.<br/>
41912 The batch job Auto match purchase order invoices was not picking up valid records correctly when running with the new approval object.<br/>
41913 The batch job Auto match purchase order invoices generated an error when running with the new approval object.<br/>
42005 The field Last invoice date was editable in the Agreements form.<br/>
42057, 42581 Calculations of sales tax on lines in ExFlow AP will always be assumed to be in net amount.<br/>
42400 An error message Range no 48 not found was displayed occasionally when working in ExFlow Import form.<br/>
42544 The project activity from ExFlow invoice line was not transferred to the projects pending invoice when working with project intercompany invoices.<br/>
42612 Resolved an issue where the error message 'Cannot create a record in invoice document (EXF_tDocumentTable). The record already exists' could appear during suggest approver process in Import form (for example when using the functions invoice match, suggest approver or fetch PO lines).<br/>
42672 The batch job Auto match purchase order invoices was not running properly after upgrade to 2.15.1.<br/>
42674 Chat notifications will prioritize displaying the voucher number instead of the document ID. If the voucher number is unavailable, the document ID will be shown instead.<br/>
42802 In My vendor invoices workspace the voucher number wasn’t exposed due to a redesign of the form. It has now been added again.<br/>
42808 India Sales Tax. When having Bill of Entry transactions in ExFlow it is now possible to switch on a parameter to get the exchange rate calculated based on the Bill of Entry date and not from the invoice date.<br/>
42809, 43393 When having time of sales at invoice approval and working with Show extended VAT information on lines, the Net/Gross amount was calculated incorrectly.<br/>
42890 It was possible to change the post-controlled status, Set as controlled or Set as not controlled, independent on invoice status.<br/>
42906 In the General Ledger financial dimension form, when a role or user group was added and then deleted, the parameter for the role or user group remained enabled and was not updated correctly.<br/>
42931 Importing of invoices to ExFlow AP from Invoice Capture was not working properly in the later releases of F&O.<br/> 
43042 When working cross company and with the invoice image side-by-side in My vendor invoices, an error message was presented when the current invoice belonged to a different legal entity than the logged in legal entity.<br/>
43054 When validating a project line the error message 'The combination resource/project is mandatory but does not exist for resource xxxxx and project yyyyy' could appear even if the Project management and account parameter validation group Resource/project was not set to mandatory. This has now changed so the validation only occurs if the parameter is set to mandatory.<br/>
43140 The default dimension value was not set properly when changing the ledger dimension in Import Form.<br/>
43273 When updating the ledger dimension value for an invoice line in Import or Document Form the sales tax property fields were not always displaying the updated value (if an update did occur).<br/>
43288 The document date was not transferred correctly to the approval email.<br/>
43319 The functionality Suggest packing slips in Document Form was set up to retrieve packing slip only when there were no prior existing packing slips. Therefore, the existing packing slip would be deleted but never retrieved.<br/>
43319 The functionality Suggest packing slips in Document Form was set up to retrieve packing slip only when there were no prior existing packing slips. Therefore, the existing packing slip would be deleted but never retrieved.<br/>
43350 When the parameter Fast communication with Web was enabled the dimension values were not removed correctly, causing invalid validations.<br/>
43367 An extension on class PurchInvoiceJournalCreate made it possible to post purchase order based invoices even if the matching result failed in standard.<br/>
43387 It is now possible to run the batch "Import OCR invoices" in all companies with logging enabled.<br/>
43393 The net amount field at line level in Import and Document Form incorrectly displayed zero when not working with Use Tax.<br/>
43575 The menu in Import Form was not updated correctly after purchase order field was modified.<br/>
43710 It was not possible upload XSLT files in the XSLT repository when running on a OnPrem environment.<br/>
43729 The value in the field Actual sales tax was reset once the Sales tax form was opened directly after Override sales tax field was change in Import Form.<br/>
43833 When using project intercompany, the wrong amount was created on the extra ledger voucher transaction. This occurred when having sales tax withdrawn at approval and use tax was included in the sales tax amount.<br/>
43965 In Import Form too many values appeared under the system defined button Open in Excel, some of the values were either deprecated or duplicated.<br/>
43969 When a vendor statement is open, in edit mode, the currency will now be editable.<br/>
44031 When a PO invoice contained a line connected to two packing slips from the same PO, the Suggest packing slip feature in the Document Form behaved incorrectly if the packing slip was opened from the header, causing the wrong packing slip quantities to be added.<br/>
44033 In entity for ExFlow columns the field Column type was missing.<br/>
44111 Resolved an issue where the dimension values were not stored properly when updating vendor account in Import Form and the parameter 'Copy default dimensions from vendor / main account' was enabled. This could cause account structure errors when validation occurred in.<br/>
44115 The application switched to a different invoice when approving invoices at header level in Document Form.<br/>
44141 When approving a line in My Vendor Invoices and on the web while using Dynamics Approval Route and Global Reference, ExFlow AP added an approver without checking if the approver was an ExFlow AP user in the same company as the invoice.<br/>
44174 The field Total lines tax amount is hidden based on the parameter setup for Tax calculation framework.<br/>
44178 When coding on project or fixed asset in either My vendor invoice or Document Form together with the usage of the parameters 'Keep project dimension values' or 'Keep fixed asset dimension values', in conjunction with 'Default dimension combination’. The financial dimension values where not stored properly.<br/>
44216 Resolved an issue where the dimension values were not stored properly when updating the ledger account in Document Form and the parameter 'Copy default dimensions from vendor / main account' was enabled. This could cause account structure errors when validation occurred in.<br/>
44404 Line type bank account is not supported in ExFlow AP but was available in configuration wizard.<br/>
44424 The application switched to a different invoice when inserting columns through personalization. This happened both in Import and Document Form.<br/>
44469 In Vendor reconciliation, the invoice date column appeared only for vendor statements and not vendor transactions, preventing proper matching when running matching rules.<br/> 
44619 In entity for ExFlow columns the field Dimension was missing.<br/>
<br/>

_________________________________________________________________________________________________________

### Release 2.15.4
#### INTRODUCTION
A new version of ExFlow for Microsoft Dynamics 365 for Finance and Operations has been released as of October 2024.
Below describes all the included changes and corrections that have been included in this and earlier patches release based on the latest major release 2.15. 

This release includes our new subscription module, released in ExFlow 2.14, enabling users to conveniently purchase functionality subscriptions directly from the Azure Marketplace.

#### Version numbers
The described release in this document supports the following versions.

| D365 FO Platform version | D365 FO application version nb | ExFlow version nb |
| ----------- | -------------- | -------------- | 
| Update 63 (7.0.7198.66) or later | 10.0.39 (10.0.1860.56) | 2.15.4 |

#### Corrections
**42400** An error message: "Range no 48 not found" was displayed occasionally when working in ExFlow Import form.

**43367** An extension on class PurchInvoiceJournalCreate made it possible to post purchase order based invoices even if the matching result failed in standard.

### Released in 2.15.3
#### Improvements
**41628** We have added more functionality to our new AI/ML service that is used in combination with ExFlow Web.

#### Corrections
**42931** Importing of invoices to ExFlow from Invoice Capture was not working properly in the later releases of Finance and Operations. 

### Released in 2.15.2
#### Improvements
**31045** We have made it possible to view invoices in Import Form through the image URL exposed in entities.<br/>
**36770** We have made the core ExFlow tables available for AllowRowVersionChangeTracking.<br/>
**40997** We have created a new list of entities to use when running with Azure Synapse Link for Dataverse.<br/>

#### Vendor statement
As part of this release, we have made several changes and added more functionality into the vendor statement functionality.
**41738** New columns added for vendor name to Statement form and Reconciliation form.<br/>
**41739** We have improved the validation checks between the from date and the minimum date imported from the statement lines.<br/>
**41740** We have improved the validation for due date. The Due date is only a relation to the invoice due date and shall not be validate against to date.<br/>
**41743** The statements are now editable if the status is open. It’s open for change of dates, amounts and add/remove lines. If the status of the statement is reconciled, editing of the statement it not possible.<br/>
**41744** The buttons for Validate and Reopen are now greyed out when the statement is Posted.<br/>
**41745** A new form is created called Vendor document status. Found under ExFlow common -Inquiries and reports - Vendor document status. The form shows transactions from the data source for vendor and payments. The users can set the transactions as “set as fully reconciled” or “set as not reconciled”.<br/>
**41746** New fields have been added in staging table and rework of logic for Vendor statement form for opening balance and ending balances. Opening balance amount from staging table will be added as line into the statement and can be manually match against vendor transactions. Settlement lines can be manually matched against more than one vendor transaction.<br/>
**41747** Validation added of imported statement lines vs ending balance.<br/>
**41748** Imported payment lines from statement can now be matched against open/settled vendor payments.<br/>

#### Corrections
**40751** When running purchase order based invoices in ExFlow in combination with Tax calculation service, taxes were not calculated correctly on line level.<br/>
**41011** The document date where not transferred correctly to ExFlow web.<br/>
**41394** The upgrade script for the released feature (37320) in 2.15, was not triggered automatically.<br/>
**41567** The released feature (37320) in 2.15, added an extra validation causing previous setup with multiple values for one column (for example sales tax group) not working properly.<br/>
**41651** Multiple forms were shown in the ExFlow menu, unless ExFlow were enabled in the legal entity.<br/>
**41681** Cost invoices with line type Ledger were not created with the correct amount upon import.<br/>
________________________________________________________________________________________________________________________

### Release 2.15.1
#### INTRODUCTION
A new version of ExFlow for Microsoft Dynamics 365 for Finance and Operations has been released as of July 2024.
This document describes all the included changes and corrections that have been included in this and earlier patches release based on the latest major release 2.15. 

This release includes our new subscription module, released in ExFlow 2.14, enabling users to conveniently purchase functionality subscriptions directly from the Azure Marketplace.

#### Version numbers
The described release in this document supports the following versions.

| D365 FO Platform version | D365 FO application version nb | ExFlow version nb |
| ----------- | -------------- | -------------- | 
| Update 60 (7.0.7198.66) or later | 10.0.39 (10.0.1860.56) | 2.15.1|

#### CORRECTIONS
**40328** The approval order for the approvers was not set correctly when running invoice matching together with suggest approver neither in Import Form or during the invoice register posting. This caused the approver status to be set to None, if suggest approvers did not return any approvers.

**41001** The new function to handle access to documents in ExFlow Web caused an unhandled exception when accessing or approving documents in some scenarios.

__________________________________________________________________________________________________________________________

### Major Release 2.15.0
#### INTRODUCTION
A new version of ExFlow for Microsoft Dynamics 365 for Finance and Operations has been released as of June 2024.

This document outlines the key enhancements, corrections, and improvements featured in this major update. This release includes our new subscription module, released in ExFlow 2.14, enabling users to conveniently purchase functionality subscriptions directly from the Azure Marketplace.

#### Version numbers
The described release in this document supports the following versions.

| D365 FO Platform version | D365 FO application version nb | ExFlow version nb |
| ----------- | -------------- | -------------- | 
| Update 63 (7.0.7198.66) or later | 10.0.39 (10.0.1860.56) | 2.15.0|

#### NEW FUNCTIONALITY
**Sales tax handling**
30034 We have made a framework on how and when line tax calculations in ExFlow lines are being performed. Calculations can now be performed both based on request and/or immediately as before. All amounts and values received from the calculations are now stored for later use.
Note: The values presented on the header in Import form is not affected by this change. The framework is only affecting the tax values on lines in ExFlow. It does not affect the posted values at Invoice register or Invoice approval.
36134 Based on the above framework for line tax we have also introduced support for Tax Calculation Service.

**Note: In this version it’s not supported with:**
-	Multiple VAT numbers 
-	Currency exchange types
-	Certain Use Tax and reverse charge scenarios
-	Override sales tax

38603 The framework contains a pre-defined list of fields that should trigger tax calculations, but it is also adjustable with a setup called Tax calculation influence fields.

**Vendor Balance Statement**

35002	We have added a new functionality to manage import and reconciliation of Vendor statements. This functionality is controlled by our subscription module mentioned in the introduction text. 

#### IMPROVEMENTS
**Workflows**
As part of the release, we have made several changes and added more fields to use in the workflow conditions.

20275 We have added the invoice line amount in the accounting and reporting currencies to all workflows.

23315 We have made it possible in the Import validation workflow to compare dates with a relative comparison such as is on or before.

30414 We have added a new position hierarchy that makes it possible to create positions and assign it to User groups and Security roles. The change also includes a new possibility to configure a financial dimension owner as an ExFlow owner which can include Workers, User group or Security roles.
The new position hierarchy is only available in ExFlow.

35488 We have added the invoice amount in the accounting currency to ExFlow Advance Approval Workflow Type and the ExFlow post control rules V2.

35610 We have added the Project Group for the project on the connected purchase order line to all workflows.

**Import methods**

37455 We have changed the access rights to private for the blobs, used to generate invoice images, that have been uploaded to the Internal F&O Azure blob container. An additional change is that the expiration time has been changed to 3 minutes. 

37653 We have made it possible to specify which file encoding to be used when reading files from an Azure blob storage during import. 

39715 We have made it possible to use external Azure blob storage during the process to generate an invoice image based on XSLT stylesheets. 
There is a new setup located at ExFlow AP -> General parameters -> PDF Web service.

40089 We have created a possibility to add extra fields to the xml file that is being created during invoice import from the pending vendor invoices form. The fields will be available to use in the generated invoice image.

**Approval object and Advanced workflow**

35714 We have redesigned how the rules and settings for the advanced workflow are being configured, evaluated and executed. This also required us to rebuild major parts of how the approval logic from ExFlow Web and My Vendor Invoices is being performed.
The new logic is restricted to a new feature parameter named Approver workflow, located at ExFlow AP-> General parameters -> Feature management.

26889 We have rebuilt the job Auto match invoice on arrival of goods. The new version of the job is dependent on 35714.

**Various**

25968 We have removed old code and parameters no longer used together with deprecated features mentioned on the Documentation Platform (https://docs.exflow.cloud/finance-operations/).
Affected entities: EXF_tAgreementsEntity, EXF_tParameterEntity, 

27275 We have added the possibility to include the line type Procurement when running the function Create journal for accrual of estimated costs of all document line types.

33619 We have added support to import and route values for the field Date of vendor VAT register.

35925 The settings for the menu item EXF_maKeepApprovalChain have been changed on the security role ExFlow Purchase Payable admin from Deny to Unset by default.

36016 We have added functionality to communicate with our new AI/ML service to suggest coding suggestions both in ExFlow Web and Import Form.

36627 When creating Self Billing Invoices based on header level agreements the due date was not calculated properly based on the vendor’s payment terms.

36816 We have included in this released the code base for the new process to work against Invoice Journal and Pending Vendor Invoices without invoice register. The function itself is not yet available.

36835 The Thailand specific fields for withholding tax on header level in Import Form have been changed to be shown only in Thai legal entities.

37320 We have extended the set up the mapping for Attributes to make it more flexible. It is now possible to configure the mapping with; Exactly like, Pass-through, Contains, Begins with, Ends with.
 
38545 We have added extension points for the system tolerance amounts controls regarding invoice matching on total, line, and charge amounts.

39355 We have added support to purchase the license for ExFlow AP through our subscription module.

39455 We have changed the name of ExFlow to ExFlow AP.

39979 The functionality to create a debit and credit invoices automatically have been disabled in Document Form unless the pre-requirement to have Attributes enabled is fulfilled.

40361 We have added an extension point to control if the standard functionality to find the lot id should run, when the function Use specific packing slip connection is used.

40480 We have built a function to control access to documents on ExFlow web.

#### CORRECTIONS
31026 We have changed the label for the Escalation parameter for the number of assigned days from workdays to days to better reflect the functionality.

32669 The approved dates on the computed lines in the form Automatic invoice coding did not show the correct value. 

33372 When performing a forward action together with a split line in ExFlow Web while the parameter Fast communication with web an error message was displayed, and the approvers where not added properly.

34563 When editing the financial dimensions in the Invoice Approval journal, the coding could in some cases also be updated on other invoices in the journal, which were not selected.

34634 The default item sales tax groups were not picked correctly per line type when running with Get default item sales tax group for temporary tax.

34824 When creating lines based on product receipts and the price unit was set to 0, no lines were created.

34884 The ExFlow tab for project intercompany transactions was shown even if the voucher was removed from the Invoice Approval Journal.

35020 It was previously possible to select a Company account when working with the line types Procurement and Customer even though intercompany transactions are not allowed. 

35621 When fetching the third-party bank account based on the invoice currency ExFlow did not validate the expiration date of the account correctly. This caused an inactive account to be set on the invoice instead of the vendor default.

35794 When you modified either the approvers or financial dimensions tabs, the first line was autos selected instead. This happened both in Import and Document Form.

35828 The defaulted label was incorrect for Purchase order-based invoices when using the function Create journal for accrual of estimated costs of all document line types. 

36417 When applying a posting proposal for a credit invoice, the lines from the proposal were fetched with positive values instead of negative.

36507 When pressing CTRL+S while using the user lookup in ExFlow an error occurred.

36637 Approvers were not added correctly when populated through the Action workflow during import.

36836 When the vendor sends an invoice with an external item number, which is correctly setup on the vendor in the system. And the same item number also is used on an internal item number. We then picked the wrong number to find the correct purchase order line based on the internal item number instead of the external.

36900 When adjusting the connected packing slip quantity in Document Form the system calculated the available quantity faulty. It also included the actual connected quantity for the current invoice line.

36910 If the ledger setup name had a different name than the current legal entity. The account structure validation from ExFlow web did not find the correct structure to validate against.

36950 An error occurred when submitting an invoice to the standard workflow in pending vendor invoices. 

36957 Approvers were not suggested properly for line type Charges when using the Combination dimension owner setup.

36999 The tile Assigned to me in the ExFlow vendor invoice management workspace did not update properly.

37055 The vendor hyperlink in the Posting Proposal Advanced form did not work properly.

37198 When creating lines based on product receipts a rounding error occurred if a line was created based on multiple receipts.

37305 When creating a correction invoice in Document Form a non-informative message was shown if the invoice image could not be found. 

37382 The approvers were added in the wrong order, when running invoice matching with suggest approver in Import form.

37555 It was not possible to update the connected packing slip quantity for credit invoices.

37556 The setup of the Timeline logging fields was visible when opening from the menu of Setup for automatic postings while it should only be visible from the Timeline setup menu.

37587 When we created item line charges, we were missing a call to MarkupTrans.initFromMarkupTable causing issues in some localizations.

37595 The condition Number of Unique approvers was not executing correctly in Action Document Workflow.

37635 It was possible to delete records in Import Form with shortkeys without using Take function.

37668 When using the function Assign to in Import Form while working cross company, an error message was thrown.

37739 Importing attributes from entity allowed adding an account relation even if the account code is set to All.

37750 It was possible to final post a cost invoice through the batch job, Cost account invoices, even if the invoice was connected to a vendor that had been set on hold.

37759 The Publish button was disabled when opening EXF_tExFlowDimensionCombinationOwnerEntity table in Excel.

37760 Regarding India sales tax, when running with intercompany charges on a purchase order the posting did not execute properly. 

37810 The checkbox Keep approval chain was not considered during suggest approver in Import Form.

37875 In certain scenarios could the applied Posting proposal Advanced end up with a balance issue instead of allocating the difference to the lines.

37956 The batch job Suggest Approvers thrown an error message when no filter was specified.

38069 The validation of 4-eye principle misbehaved in some scenarios causing the invoice to be approved even if 4-eye principle was not fulfilled.

38079 The parameter Use scanning date as invoice date was not suggesting the dates correctly.

38237 Buttons that should only be available for purchase order-based invoices were active for all invoices in Import and Document Form. 

38238 The line amount was not calculated correctly when using the function Retrieve purchase orders in Document Form. This happened in combination with a discount specified on the purchase order line.

38372 The ExFlow Vendor Aging Report showed the sales tax labels incorrectly for AU and NZ.

38395 The wrong account was used when line type Procurement was accrued through the function Create journal for accrual of estimated costs of all document line types. We now use the account specified for Purchase expenditure for expense.

38402 In the setup for Timeline under the Dynamic field groups it’s possible to select multiple groups but previously only one was used during execution.

38403 During the import of multiple invoices at the same time the parent journal number was set incorrectly but without any functional impact on the actual import.

38438 When suggesting approvers based on Automatic invoice coding feature all approvers were added with status Current.

38477 When working with line type Charges the coding fields disappeared.

38478 It was possible to modify the approvers on a line with status Rejected.

38491 The fields Amount MST and Amount in transaction currency were not working properly in the Import validation workflow.

38504 The labels for Clean up in the menu have been aligned.

38659 The Item Sales Tax Group was blank in a certain scenario after allocation of line charges in Import and Document Form.

38660 The new parameter for post control Require comment affected other processes when an invoice was Approved inside ExFlow forms.

38769 When all rules were removed from Vendor Identifier Rules there was still one line existing in the line view.

38795 The fields SpentAmount and DocumentState were missing in the entity EXF_tAgreementsStaging.

38803 Approvers were not added correctly when using Advanced Approval Workflow in combination with Posting proposal advanced.

38808 Posting date was not updated correctly on purchase order invoices when the modules Ledger or Vendor was closed during the final posting.

38816 When working with Tax Calculation Service for journals. The actual sales tax amount in ExFlow Import form was blanked out.

38828 The flag Send mail in Document Form was not updated properly to false when running the broadcast email across multiple companies.

38835 Transactions created with Breakdown of voucher was not transferred correctly into the Invoice approval journal.

38887 Thailand, multiple unnecessary Withholding tax transactions were created when invoice was posted through ExFlow.

38952 When using the Default dimension combination (Setup for automatic postings) and modifying the project id on the lines, the stored dimension values were not always the same as the values visible in the form. 

39018 Thailand, when the ExFlow dimensions Invoice receipt date and/or Tax invoice receipt date was activated, an error occurred when the ExFlow invoice was fetched into the invoice approval journal. The error caused the lines not to be added to the journal.

39296 Approvers were not added correctly when using Advanced Approval Workflow in combination with Advanced workflow approver on financial dimension.

39354 The starting point Previous position in Advanced Approval Workflow did not work properly.

39453 The control for use tax in Import Form did not consider the valid date for the sales tax code.

39529 When performing matching in Import Form and working with the function Use specific packing slip connection the matching was not performed on the actual selected delivery notes.

39601 The actual sales tax amount was incorrect after selecting a record in the Breakdown of voucher tab in Import Form.

39791 When running with the XML serializer for ExFlow web, dimensions sometime was not shown correctly in combination with virtual fields.

40013 The batch job Cost account invoices, did not use the functionality for post and transfer correctly.

40090 When trying to open the chat notification in action center, an error was thrown.

40132 Dimension values were not being evaluated correctly in the Import validation workflow.

40210 Dimension values were not inherited correctly in ExFlow Web for the Fixed Asset line type.

40279 Calculation of VAT for line charges caused validation errors in certain scenarios for EU vendors due to incorrect amounts.

40364 When setting up the workflow condition with Assign only to last user retrieved, we added all available users instead.
_________________________________________________________________________________________________________________________________

### Release 2.14.2
#### INTRODUCTION
A new version of ExFlow for Microsoft Dynamics 365 for Finance and Operations have been released in March 2024.

This document describes the included changes and corrections that have been included in this patch release based on the latest major release 2.14. Items released in earlier patches have been tagged with their original version number.

In the major release 2.14. we released our new subscription module that will make it possible to buy subscriptions of functionality from Azure Marketplace. 

#### Version numbers
The described release in this document supports the following versions.

| D365 FO Platform version | D365 FO application version nb | ExFlow version nb |
| ----------- | -------------- | -------------- | 
| Update 60 (7.0.7036.125) or later | 10.0.36 (10.0.1695.106) | 2.14.0|

#### NEW FUNCTIONALITY
35002 We have added a new functionality to manage import and reconciliation of Vendor statements. This functionality is controlled by our new subscription module mentioned in the introduction text. (2.14.1)

36016 We have added functionality to send information to our new AI/ML service for ExFlow Web. (Currently only available for selected customers.)

#### IMPROVEMENTS
37653 We have made it possible to specify which file encoding to be used when reading files from an Azure blob storage during import. (2.14.1)

#### CORRECTIONS
33372 When performing a forward action together with a split line in ExFlow Web while the parameter Fast communication with web an error message was displayed and the approvers where not added properly.

34824 When creating lines based on product receipts and the price unit was set to 0, no lines were created.

36950 An error occurred when submitting an invoice to the standard workflow in pending vendor invoices. (2.14.1)

37198 When creating lines based on product receipts a rounding error occurred if a line was created based on multiple receipts.

37760 Regarding India sales tax, when running with intercompany charges on a purchase order the posting did not execute properly. (2.14.1)

38079 The parameter Use scanning date as invoice date was not suggesting the dates correctly.

38477 When working with line type Charges the coding fields disappeared.

38491 The fields Amount MST and Amount in transaction currency were not working properly in the Import validation workflow.

38808 Posting date was not updated correctly on purchase order invoices when the modules Ledger or Vendor was closed during the final posting.

38816 When working with Tax Calculation Service for journals. The actual sales tax amount in ExFlow Import form was blanked out.
______________________________________________________________________

### Release 2.14.1
#### INTRODUCTION
A new version of ExFlow for Microsoft Dynamics 365 for Finance and Operations have been released in February 2024.

This document describes the included changes and corrections that have been included in this Major release.
In the major release 2.14. we released our new subscription module that will make it possible to buy subscriptions of functionality from Azure Marketplace. 

#### Version numbers
The described release in this document supports the following versions.

| D365 FO Platform version | D365 FO application version nb | ExFlow version nb |
| ----------- | -------------- | -------------- | 
| Update 60 (7.0.7036.125) or later | 10.0.36 (10.0.1695.106) | 2.14.0|

#### NEW FUNCTIONALITY
35002 We have added a new functionality to manage **import and reconciliation of Vendor statements**. This functionality is controlled by our new subscription module mentioned in the introduction text and will be **GA during April**.

#### IMPROVEMENTS
37653 We have made it possible to specify which file encoding to be used when reading files from an Azure blob storage during import.

#### CORRECTIONS
36950 An error occurred when submitting an invoice to the standard workflow in pending vendor invoices.

37760 Regarding India sales tax, when running with intercompany charges on a purchase order the posting did not execute properly.

### Major Release 2.14.0
#### INTRODUCTION
A new version of ExFlow for Microsoft Dynamics 365 for Finance and Operations has been released as of January 2024, and has been validated with the latest Microsoft release.
This document outlines the key enhancements, corrections, and improvements featured in this major update. 

**DEPRECATED FROM VERSION 2.14.0**
https://docs.exflow.cloud/finance-operations/docs/user-manual/whats-new-and-planned/removed-or-deprecated-features

**New Module;**
This release includes our new subscription module, enabling users to conveniently purchase functionality subscriptions directly from the Azure Marketplace.

#### Version numbers
The described release in this document supports the following versions.

| D365 FO Platform version | D365 FO application version nb | ExFlow version nb |
| ----------- | -------------- | -------------- | 
| Update 60 (7.0.7036.125) or later | 10.0.36 (10.0.1695.106) | 2.14|

#### NEW FUNCTIONALITY

28037 We have added a new functionality that automates the creation of both debit and credit invoices for previously posted invoices. This enhancement streamlines the correction process for erroneous postings in cost invoices, providing a more efficient management solution.

34514 It is now possible to view the detailed matching results in ExFlow. These results are stored for versatile use in all workflows. Additionally, within this feature, the signing limit concept has been extended to allow the specification of different signing limits for variance amounts.

33652 We have enhanced configurability by enabling users to set the posting date based on specific business needs. This update offers greater flexibility in tailoring the system to align with individual business requirements.

#### IMPROVEMENTS
#### Post Control
7511 The ExFlow Post Control rules v2 workflow can now be configured to halt only when there is a change in coding.

10774 Updates have been implemented to expand the list of editable coding fields during corrections. Additionally, users can now designate an invoice as controlled from within the ExFlow document form. 

30437 We have created a new workflow for Post Control called ExFlow Post Control rules v2.

**Please Note;**
If using the Post control functionality, you need to check the section for post control parameters after update to 2.14.0. 
In the new update there are separate sliders for including cost invoices or invoices connected to purchase order invoices.

**See more details in section** https://docs.exflow.cloud/finance-operations/docs/user-manual/post-control/setup-and-work-with-post-control

Before update
![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image548.png)

After update
![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image549.png)


#### Workflows
As part of the release, we have made several changes and added more fields to use in the workflow conditions.

23177 The Purchase Requisition preparer is now included as a new participant in the Advanced workflow.

26528 A new condition, "Number of unique approvers," has been introduced to all workflows.

30279 Technical enhancements have been implemented for action workflows, consolidating common actions in the code.

31054 The Project Contract Id is now available for use in all workflows related to cost invoices.

31058 The field EXF_tDocumentLineApprovers.ApprovedBy has been added to multiple workflows where it was previously unavailable.

32376 The Approval status from the Purchase Order has been incorporated into all workflows.

32400 A new method, "Number of attachments", is now applicable to all workflows.

33991 The field Line reference on line level in ExFlow has been integrated into all workflows.

34368 The remaining inventory dimensions have been added across all workflows.

#### Agreements
Minor changes were made to the agreement functionality.

30625 We have made label changes and added more valid help texts.

31947 It is now possible to activate agreements with a multiselect of records.

31950 We have added a new frequency type to the agreements called Period length. This works in combination with a new field called Number of invoices per period.

#### Enities
The following entities have been updated or added:
32797 ExFlow Parameters entity has been updated.
32798 ExFlow Configuration entities have been updated.
35165 Advance posting proposal Line level to Excel were missing the fields: Percent, FixAmount and Reference.
32799 ExFlow General parameters entity has been added.
32800	 Import methods entity has been added.
36463 Global reference setup entity has been added.

#### Import methods
30827 It is now possible to import all attachments sent in a single email to ExFlow Data Capture when importing an invoice into ExFlow.

32031 We have added a new import method making it possible to import invoices from the standard import in Dynamics, which can be configured together with Microsoft Electronic Reporting.

32772 Changes have been made to the creation process of invoices in ExFlow from the Vendor portal, Invoice Capture, and MS Electronic Reporting. This modification includes the generation of an invoice XML, providing the option to create an invoice image post-import if it's missing.

34223 The logic during Import OCR has been updated to refine how invoice images are fetched or generated.

34288 We have added functionality to import charges from Invoice Capture if they have been interpreted.

#### Various
12072 The AI flashlight image has been moved to the header pane from the lines, and replaced the image.

29411 We have extended the feature to work with summarize lines to now include availability in My Vendor Invoices.

30034 Initial changes have been made in a new framework to handle sales tax calculations in ExFlow forms. The functionality is controlled by a feature parameter called New tax calculation approach located at ExFlow -> General parameters -> Feature management. 

31303 The Bill of entry journal now shows the related Bill of entry transaction under Related invoices when working with India Sales Tax and Import orders through ExFlow.

31460 We have enhanced the log clean up batch jobs making it possible to run the clean ups from separate menu items instead of a combined batch job. The new batch jobs are located at ExFlow -> Periodic tasks -> Clean up.

32454	The capability to view invoice images in the payment journal has been extended to include functionality within centralized payments.

32916 A new balance field has been introduced on the invoice header in the ExFlow Document Form.

34336 A new maintenance script has been incorporated to restore the Power BI report "ExFlow Analytics PBI."

34760	The label text that appears when the "Change status" button is clicked in the ExFlow Document Form has been updated.

34839 We have removed the legacy field PostStatus from the tables EXF_tDocumentTable and EXF_tDocumentLine. The legacy fields PU_PostInBatch and PU_PostOnlyWhenReceived from table EXF_tParameters have also been removed.

34982 It is now possible to engage in 3-way matching for Landed Cost invoices linked to purchase orders with a delivery term set to 'Goods in transit management.' This applies specifically to lines without a specified voyage ID reference.

35128 New functionality has been added to address exchange rate discrepancies during the final posting for Landed Cost invoices.

36280 Performance enhancement has been implemented for the validation of invoices from ExFlow Web, featuring parallel thread execution for improved efficiency.

**Note:** Activated with a feature parameter called Fast communication with web located at ExFlow -> General parameters -> Web setup. Together with a new parameter called Validate invoice in ExFlow web located at ExFlow -> General parameters -> System options.
 
#### CORRECTIONS
20638 When configuring dimensions to be active for certain date periods, we previously had an error validating the invoice in ExFlow Web.

23012 The filter for approvers in ExFlow Document Form list page did not behave properly when searching or selecting the values.
 
23690 The form shown when using the function Retrieve product receipt showed incorrect purchase order status in some scenarios.

24867 The entity EXF_tDocumentLineDimensionEntity has been updated to also expose intercompany transactions.

28124 Previously the SII report was rejected by the Spanish authorities due to missing information if the invoice was posted via ExFlow. We have re-written the posting logic for the invoice register to handle this.

**Note:** Activated with a feature parameter called New invoice register journal posting located at ExFlow -> General parameters -> Feature management.

28142 Changing the ExFlow Configuration for Transaction Text to make it work with free text values only, was not working properly for intercompany invoices.

29297 When identifying the purchase order based on the Customer reference field on the purchase order, ExFlow did not take the purchase order status into consideration during the invoice import.

29336 A line appeared on the Lines grid from the ExFlow Import history form with no invoice selected.

30048 Previously, when utilizing the "Use specific packing slip connection" feature and selecting "Suggest packing slip" in the Document Form, the function consistently suggested based on the FIFO method.

30289 The Invoice Remainder checkbox value in Document Form list page was not displayed correctly when it was a credit purchase order.

30690 In Document Form, the line field Approver was not updated properly after suggesting approvers.

30858 Previously, the Match result value was copied from Import Form to Document Form even if it was a cost invoice.

30896 The function Breakdown of voucher did not work properly for credit invoices.

31020 When transferring the invoice image to sub-modules; the DocumentId was not correctly set, leading to operational issues.

31222 When forwarding an approved invoice line in Document Form, an error message was displayed with incorrect text.

31224 When having EU VAT on charge lines, the calculations were not performed correctly.

31442 When extending an agreement for a new year, only the end date was changed, but not the “from” date.

31514 When applying a posting proposal that involved both a procurement category and financial dimensions, an issue arose where the approver wasn't displayed accurately, especially when the workflow was configured alongside Combination dimension ownership.

31518 When working with assign organization, the following functionalities in Setup for automatic postings were not working properly: Default dimension combination and Invoice log.  Additionally, the Connect function, used for locating purchase order lines, has undergone updates to enhance its performance and accuracy.

31878 Upload vendor information to ExFlow Data Capture (Multiple methods) ran incorrectly for disabled import methods.

31948 The function to copy an agreement did not include the Posting proposal id or the Sales tax group and Item sales tax group.

31949 The function to extend an agreement did not include the Posting proposal id or the Sales tax group and Item sales tax group.

32329 When using the ExFlow Bill of Entry form in ExFlow Import Form an exception error was thrown when having more than one line.
 
32416 Approvers were not suggested correctly on charge lines when working with Advanced workflow approver on financial dimension.

32435 When importing an invoice with an attachment name containing characters unsuitable for a file name, an unhandled exception was triggered.

**Note:** To activate the new validation, we have added a parameter called Clean attachment file name located at ExFlow -> Setup -> Import methods.

32805 When working with Use specific packing slip connection and changing the connected packing slip in ExFlow, the connected quantity was not recalculated correctly.

32808 Following the invoice register posting from the ExFlow Import Form in India, there was an issue where, upon reopening the ExFlow Import Form, the accurate display of sales tax was not being presented correctly. 

32811 When posting a Project intercompany invoice there was a posting error in the approval journal due to the Tax-exempt number not being specified on the reverse transaction.

32812 Previously, the packing slip/product receipt form allowed the selection of cancelled packing slips.

32863 ExFlow Import history data clean-up performance improvements have been made.

32914 When manually adding connected packing slips in the packing slip/product receipt form, the wrong packing slip could cases be inserted in some cases.

32989 During the configuration of conditions for the ExFlow Advance Approval Workflow Type, a technical issue arose when dealing with dimension names that included spaces.

33021 The workflows' projection model was inadvertently saved as cached, leading to timeouts for certain workflows that were not intended to share the same projection model. For instance, this affected workflows configured based on Procurement Category, and those reliant on currency exchange rates.

33030 The function Retrieve product receipt copied the wrong charge amount to the invoice lines if they were setup showing incorrect purchase order status in some scenarios.

33081 The specification created when running with the summarize feature was always saved with Document type ‘File’. This has now been changed to use the Document type attachment parameter located at ExFlow parameters -> Document handling.

33149 Charges added to the purchase order were not allocated correctly for consolidated invoices during the final posting.

33187 In the Polish localization, the calculation of sales tax based on the invoice date was not working properly on invoice line level.
33206 When modifying the exchange rate on purchase order-based invoices in ExFlow Import form, the amount in reporting currency was not updated correctly.

33258 An error message was generated when trying to distribute amounts or view the matching details in the Vendor invoice form (VendEditInvoice).

33327 Following the posting of a credit invoice, there was a disparity noted in the actual posted sales tax amount when compared to a debit invoice.

33377 The button Extended search in My vendor invoices was not displayed correctly due to assign organization restrictions.

33512 The evaluation of System line amount approval specified in Setup for automatic postings was not performed correctly in ExFlow Import Form.

33673	We have renamed the field License code to License key in ExFlow General Parameters.

33992 Notifications with Action Import Workflow were not always triggered due to a mismatch between capital and lowercase letters on values.

34109 In was not possible to remove fields in ExFlow configuration if they were connected to the project intercompany functionality.

34152 Notifications with Action Import Workflow did not trigger any post in the action workflow log.

34182 Splitting and saving a new line in ExFlow Web caused an object reference error if the feature parameter Fast communication with web located at ExFlow -> General parameters -> Web setup was activated.

34296 Sales tax adjustments during creation of invoice approval journal wasn’t performed correctly when working with 100% non-deductible sales tax.

34306 Label change when validating if an invoice approval journal contains project intercompany invoices.

34513 When pressing the arrow key down after the last invoice in Import and Document Form, an error message was shown.

34518 The Project Intercompany functionality affected other pending invoices with transaction origins other than Vendor invoices.

34528 When attempting to add a charge of type item, a warning message would prompt the user to allocate the charge, even when running without the Line Item Charges parameter activated. Charge allocation for type item is now only applicable when the Line Item Charges parameter is activated.

34573 Regarding India sales tax, charges weren’t calculated correctly in the Tax calculations form.

34631 The function Project Category item sales tax group in Setup for automatic postings did not return the correct item sales tax group. Instead, one of the item sales tax groups configured in ExFlow parameters was returned.

34697 The fields for Vendor item id and Vendor item description weren’t available in the entity used by the Power App PO Reconnect.
34859 It was possible to post a Project intercompany invoice from ExFlow, where the lines sum up to 0 in the approval journal, with the post and transfer functionality.

34867 The calculation of withholding tax faced an issue when an invoice was split across two or more lines, and at least one of them had zero sales tax coded.

34872 The names of security roles were displayed with their GUI name instead of the actual role name under Advanced workflow approver on financial dimension.

34955 Changing the header dates on an agreement was possible without validating the line dates. This caused an unclear error message during the activation of the agreement instead.

35072 The values for Outstanding balance for cost invoices and Outstanding balance for purchase order invoices in the analytics report tab Invoice process overview showed incorrect values.

35172 When applying a posting proposal that involved landed cost in conjunction with financial dimensions, there was an issue where the approver was not displayed correctly, particularly when the workflow was configured based on the financial dimension owner. This issue has been resolved for accurate presentation of the approver in such scenarios.

35211 It was not possible to configure an event for Invoice Cancelled in the new Timeline functionality.

35350 When importing invoices through MS Electronic Reporting we identified that some amount values were not set correctly in the generated XML file.

35364 When the feature parameter Fast validate in ExFlow web located at ExFlow -> General parameters -> Web setup was activated, some workflow function was not working properly.

35421 The ExFlow Settlement functionality faced an issue where, when multiple pairs of invoices were connected, only one of the pairs was settled correctly upon posting the invoice approval journal.

35438 Setup of a Timeline field group could cause an error during invoice import if the setup of Invoice log was done incorrectly.
35452 	Action workflow was not triggered correctly when setup with the forward action.

35533 The values for Created year in the analytics report tab Invoice process overview showed incorrect values.

35545 In the Document Form, when attempting to remove one of two invoice lines, an incorrect validation occurred, preventing the removal of the line. This issue was triggered by a minimum limit constraint on the number of lines allowed on an invoice. This has been fixed to ensure accurate line removal.

35587 When viewing the ExFlow invoice from a project intercompany transaction, the wrong invoice was shown.

35589 When setting up Action workflow with action Set approver, an error message was raised if the selection was a user group or role.

35685 The purchase order information screen in ExFlow web showed the wrong value for ordered quantity.

35705 Blocked for manual entry on main accounts were not validated properly in ExFlow web when configured with legal entity override.

35827 Filter values in the batch job Create Journal for accrual of estimated costs of all line document line types were not saved correctly.

36102 The field Last invoice date was missing in the entity EXF_tAgreementsEntity.

36307 Charge variances were not properly calculated when performing matching in Import form when the parameter Match import and run suggest approver using tmp table was activated at General parameters -> Feature management.

36383 Posting project intercompany invoices where the combined amounts from two or more lines, involving different projects, equate to zero.

36420 Header attributes were not imported correctly from the XML file.

36433 In Import Form, the line field Approver was not updated properly after adding user groups or roles as approvers.

36594 ExFlow filters were visible in the Pending vendor invoice form.

37090 An error occurred when posting a purchase order invoice from Import Form due to a configuration issue within business events and data lake settings. 

37105 When posting a credit invoice that included withholding tax, the amount was calculated incorrectly. 

### Release 2.13.4

ExFlow versions of Microsoft Dynamics 365 for Finance and Operations have been released in December 2023. This document describes the changes and corrections that have been included in this 4th Patch release based on the Major release 2.13.0.

Version numbers
ExFlow for Microsoft Dynamics 365 for Finance and Operations supports the following versions:

| D365 FO Platform version | D365 FO application version nb | ExFlow version nb |
| ----------- | -------------- | -------------- | 
| Update 56 (7.0.6801.37) or later | 10.0.32 (10.0.1515.44) | 2.13.4 |

31224 When having EU VAT on charge lines, the calculations were not performed correctly.

32416 Approvers where not suggested correctly on charge lines when working with Advanced workflow approver on financial dimension.

32435 We identified a merge issue on the form Import Methods with the previous version of the correction released in 2.13.2

32805 When working with Use specific packing slip connection and changing the connected packing slip in ExFlow, the connected quantity wasn’t recalculated correctly.

32989 When working with ExFlow Advance Approval Workflow Type and setting up conditions based on dimension names, we had an issue with dimension names that contained spaces.

33206 When modifying the exchange rate on purchase order-based invoices in ExFlow Import form the amount in reporting currency was not updated correctly.

34872 The names of security roles were displayed with their GUI name instead of the actual role name under Advanced workflow approver on financial dimension.

35350 When importing invoices through MS Electronic Reporting we identified that some amount values were not set correctly in the generated XML file.

35587 When viewing the ExFlow invoice from a project intercompany transaction, the wrong invoice was shown.

36383 4 invoices where the amounts from two or more lines against different projects sums to zero. 

36463 We have added data entities for the Global reference setup.

### Release 2.13.3
34528 When adding a charge of type item, a warning message appeared saying that you needed to allocate the charge. Allocation of charges of type item should only be applicable when running with the parameter Line item charges activated.

34631 The function Project Category item sales tax group in Setup for automatic postings did not return the correct item sales tax group. Instead, one of the item sales tax groups configured in ExFlow parameters was returned.

34867 Withholding tax was not calculated properly when you split the invoice over two or more lines where at least one of them were coded with zero sales tax.

### Release 2.13.2
32435 When you imported an invoice with an attachment name that contained invalid characters for a file name, we raised an unhandled exception. 
Note: To activate the new validation, we have added a parameter called Clean attachment file name located at ExFlow -> Setup -> Import methods

32772 We have changed how the invoices are created in ExFlow from the Vendor portal, Invoice Capture and MS Electronic Reporting order to also create an invoice XML to have the possibility to generate an invoice image after import if missing.

34223 We have updated the logic during Import OCR to identify how the invoice images should be fetched or generated.

34288 We have added functionality to import charges from Invoice Capture if they have been interpreted.

34296 Sales tax adjustments during creation of invoice approval journal wasn’t performed correctly when working with 100% non-deductible sales tax.

34336 We have added a new maintenance script to restore the Power BI report ExFlow Analytics PBI.

34518 The Project Intercompany functionality affected other pending invoices with transaction origins other than Vendor invoices.

34573 India sales tax, charges weren’t calculated correctly in our form Tax calculations.

34697 The fields for Vendor item id and Vendor item description weren’t available in the entity used by the Power App PO Reconnect.


### Release 2.13.1
ExFlow versions of Microsoft Dynamics 365 for Finance and Operations have been released in August 2023. 
This document describes the changes and corrections that have been included in this 1st Patch release based on the Major release 2.13.0.

**Version numbers**
ExFlow for Microsoft Dynamics 365 for Finance and Operations supports the following versions:

| D365 FO Platform version | D365 FO application version nb | ExFlow version nb |
| ----------- | -------------- | -------------- | 
| Update 56 (7.0.6801.37) or later | 10.0.32 (10.0.1515.44) | 2.13.1 |

28124 Previously the SII report was rejected by the Spanish authorities due to missing information if the invoice was posted via ExFlow. We have re-written the posting logic for the
invoice register to handle this.

**Note:** Activated with a feature parameter called *New invoice register journal* posting located at
**ExFlow -> General parameters -> Feature management.**

32031 We have added a new import method to make it possible to import invoices from the standard import in Dynamics that can be configured together with electronic reporting.

32329 When using the ExFlow Bill of Entry form in ExFlow Import Form an exception error was thrown when having more than one lines.

32808 After performing the invoice register posting from ExFlow Import Form and opening the ExFlow Import Form again the actual sales tax was not displayed correctly.

32812 Cancelled packing slips was possible to choose in the packing slip/product receipt form.

32863 ExFlow Import history data clean-up performance improvements.

32914 When manually adding connected packing slips in the packing slip/product receipt form the wrong packing slip could in some cases be inserted.

32916 We have added a new balance field on the invoice header in ExFlow Document Form.

33149 Charges added to the Purchase order were not allocated correctly for consolidated invoices during the final posting.

33187 In the Polish localization the calculation of sales tax based on the invoice date was not working properly on invoice line level.

33258 An error message was thrown when trying to distribute amounts or view the matching details in the Vendor invoice form (VendEditInvoice).


### Major Release 2.13.0 (2023 R1)

ExFlow versions of Microsoft Dynamics 365 for Finance and Operations have been released in June 2023. This document describes the changes and corrections that have been included in this Major release. 

**Version numbers**
ExFlow for Microsoft Dynamics 365 for Finance and Operations supports the following versions:

| D365 FO Platform version | D365 FO application version nb | ExFlow version nb |
| ----------- | -------------- | -------------- | 
| Update 56 (7.0.6801.37) or later | 10.0.32 (10.0.1515.44) | 2.13.0 |

6794 We have added functionality to work with fixed amounts and marking a posting proposal for credit invoices in Posting proposal advanced.

10439 We have added the line reference as a selectable field in Posting proposal advanced.

11354 We have made the passwords in Import methods encrypted.

11664 Defaulting of sales tax will now be applied when applying a posting proposal.

14081 We have added the possibility to search and filter on the vendor’s name in Advanced posting proposal.

15856 Document form got enabled for editing when you canceled the action Restart approval route.

17094 India sales tax, we have improved the support for Bill of Entries.

19605 We have added a validation of the company account field during posting from Import form to validate that the intercompany company is active.

19774 We have added a new function called Invoice timeline to follow how the invoices have been processed in the system.

21043 We have adjusted how the data for the Upload vendor information to ExFlow Data Capture has been created.

21498 We have extended the support for Project operations.

23392 When running with the parameter Copy to offset dimensions an error could occur during Import OCR. If the dimensions in combination with the offset account wasn’t valid according to the account structure.
23810 The functionality to automatically settle a debit invoice against a credit invoice could in some scenarios settle the invoices faulty. The identified scenario didn’t take the vendor account into consideration.

24507 When running a project intercompany invoice, the dimensions weren’t validated correctly from ExFlow Web. It could therefore let the users code against suspended dimensions.

25199 We have refactored the form logic in Posting proposal advanced.

25786 We have renamed the tab Option in Import form to Manage.

25830 When working with line item charges in ExFlow and the selected charge is of type item and the charge wasn’t allocated in ExFlow. ExFlow then updated the matching status wrongly after the matching in ExFlow.

26105 Create journal for accrual of estimated costs - all types, did not fetch project information from the purchase order line.

26529 We have added the invoice amounts for header and lines in the reporting currency to ExFlow Advance Approval Workflow Type.

26578 When setting up ExFlow Advance Approval Workflow Type to fetch two or more dimension owners as approvers. ExFlow only fetched one of them when the line type was Charges in Import form.

26864 The parameters keep tax group and keep sales tax groups at approval did not work as expected My vendor invoices for project lines.

26993 It was previously possible to manually change the flow status on lines of type Item in Document form.

27075 We have added a new import method to support import of invoices from Microsoft Invoice Capture.

27276 Tax Invoice Date was displayed twice in Import form in the localization for Thailand.

27344 We have added a possibility to clean the log for ExFlow web in the periodic job Import history data clean-up.

27353 When trying to add a penny difference the function did not work properly if there were already line charges allocated to the line.

27523 Project sales price on purchase order invoice were always recalculated based on the price model instead of taken from the purchase order line. The change now is looking at a standard project parameter Default project sales price from purchase line when invoicing to decide the logic.

27708 The fields Invoice receipt date and Tax Invoice receipt date were not successfully updated using the function Import from file in the localization for Thailand.

28009 Posted withholding tax does not take the sales tax into consideration when processing the invoice for payment.

28087 We have enhanced the logic to decide if the invoice XML should be generated or not when the workflow ExFlow validation Exception type is enabled.

28088 We have adjusted the approval service classes used when approving invoices in My vendor invoices.

28089 We have enhanced the generation of the invoice XML during the approval process.

28114 Added standard query and user interface for PO connect through field inventTransId stored as Miscfield9 on import history log line. This is in relation to 27075 to support Microsoft Invoice Capture.

28123 We have added the parameter Clean XML to the Import method Azure blob storage.

28138 You were previously able to set yourself as your own replacer. 

28199 The periodic job Suggest approvers did not generate an info message when the job was done.

28228 We have added a warning message when an invoice is marked as Confidential in Document Form.

28302 Override purchase tax is now also possible when working with Microsoft tax calculation service.

28385 We have changed how the call against ExFlow Data Capture is performed when uploading vendor master data. We have also made it possible to generate the xml for the vendor upload from the Import Method setup form. 

28425 The new tables that were added for the summary invoice function were not added to the roles ExFlow purchase payable admin, ExFlow Web approver role and ExFlow approver role.

28426 When cancelling an invoice in Document Form not only the approver lines for that invoice were updated with status Rejected, but all approver lines for all invoices in that company. This was due to a new function in 2.12 called 25017. This new feature has been removed and there is also a script to restore the previous status of the approver lines. 
Note: Please contact SignUp if there is a need to run this script.

28443 Editing an active coding structure defined in Advanced workflow approver on financial dimension caused a validation error. Now it is only possible to edit the structure if it is in Draft mode.

28472 We have added User Group and Security Roles to the Combination dimension owner setup.

28473 We have added User Group, Security Roles, and Position to Advanced workflow approver on financial dimension.

28478 The function to inherit dimensions from the employee (1st approver) has been adjusted.

28483 Adding assign organization to ExFlow web user role made it possible for users with access to import and document form to view all invoices.

28485 The Power App for reconnecting invoice lines to purchase order lines did not handle price unit conversions properly.

28578 When working with quantity tolerances within the function Connect the wrong purchase order line is being connected to the invoice line.

28602 The function to set a due date on Self Billing invoices did not calculate the DueDate properly. It always added 30 days more than was stated on the Terms of Payment. 

28603 Charges were not posted correctly if the purchase order was set up to be posted intercompany.

28641 We have added a validation message when running the Cross-company duplication synchronization.

28689 The tile Cost invoices in the workspace ExFlow vendor invoice management wasn’t showing all available cost invoices. It only showed invoices with line type Ledger.

28719 The form shown when using the function Retrieve product receipt had a misleading label for the Inventory quantity.

28721 We have added support for Ledger account aliases in ExFlow web.

28747 We have added a framework to create invoices in ExFlow XML format through code.

28782 When working with consolidated PO invoices any charges from the purchase order were adjusted to 0.  This happened even if the line item charge functionality in ExFlow where turned off.
 
28799 India sales tax, when working with PO invoices the withholding tax wasn’t calculated properly.

28800 We have added a new updated entity to work with in combination with our Power App PO Re-connect.

28822 Support implemented for the new XML serializer functionality for communication with ExFlow Web together with the Summarize function.

28827 The entity EXF_tUserTableEntity has been updated.

28886 We have extended the functionality around extended search and it’s now also possible to filter on the extended search result.

28924 The entity EXF_tReferenceEntity has been updated.

28940 When working with payment schedules on cost invoices the original amount was still available for payments.

28964 The entity EXF_tAgreementEntity has been updated.

29193 When working with summarized invoices the logging of approvers was not performed correctly in all scenarios.

29298 The periodic job Create journal for accrual of estimated cost of all document line types included lines where the items were stocked if you also had selected Include Procurement category.

29335 Suggesting approvers together with Combination dimension owner could in some scenarios give Approver Status None.

29337 We have made it possible to import Sales Tax Group and Item Sales Tax Group from the invoice XML.

29338 India sales tax. We have added access to standard D365FO forms used with India sales tax to ExFlow purchase payable admin role.

29367 The Power BI report wasn’t possible to open in ExFlow analytics workspace.

29540 In a polish entity the exchange rate wasn’t taken based on the Date of VAT register.

29545 In the Import/Document form, intercompany dimensions were not always populated correctly when moving between tabs.

29599 When creating the invoice image in Document form the Note text on the DocuRef record wasn’t transferred correctly.

29609 The function Retrieve product receipt could in some cases update the purchase order number on header level with a faulty number.

29684 The function to inherit dimensions from vendor did not remove dimensions not valid for the connected account structure and defined advanced rules.

29691 After the upgrade to MS 10.0.32 an extra line was added to the Invoice approval journal, if vouchers were fetched manually.

29726 We have created extension points in the function Import from file.

29884 The actual sales tax got updated to the calculated sales when switching between a Cost and Purchase Order invoice.

29908 We have created new staging tables to connect against Data management for the Power App PO Reconnect.

29944 We have added the agreement responsible person as an Advanced workflow approver participant.

29947 When working with the summarize invoice function the configuration to only run for specific vendors didn’t function properly.

30059 The Web was not working properly when enabling the XML serializer parameter.

30061 We have added a parameter to configure which Purchase order line quantity should be shown on the invoice line in ExFlow web. Default will be ordered quantity but now you can also select invoice remainder quantity.

30062 We have added an action to set Invoice Type in the Action document workflow.

30117 In ExFlow Advance Approval Workflow Type the criteria for Procurement categories were changed in previous ExFlow version that caused an error when opening the workflow editor. 
Note: if you have the error with the workflow editor. Please contact SignUp support for assistance to run a script.

30224 We have changed how the lookup for the Vendor Default Offset Account behaves in Import form to behave like the Invoice register journal.

30248 We have introduced a new function to handle references on a global level across legal entities and with a legal entity override. The functionality also includes a possibility to assign a reference against a Worker, ExFlow User Group, ExFlow Security roles and Position.

30249 Working with line item charges and consolidated PO invoices together with line type Procurement gave an error upon final posting, due to the amount from the Procurement line wasn’t added correctly. 

30281 Calculated sales tax at line level in ExFlow wasn’t based on the standard parameter General Ledger Parameters -> Sales Tax -> Calculate data type.

30282 Summarize batch did not pick up all invoices in status Confirmed not summarized.

30293 Workspace ExFlow Monitoring was only visible for System administrator users.

30351 Summarize invoices was only rejected at line level and not at approval level.

30362 The sales tax details on line level in ExFlow Document form was not shown correctly for the sales tax code and for the non deductible percentage.

30392 Features are still labeled Preview in ExFlow Global Parameters.

30421 We have added extension points in the class EXF_cDynamicLookupsLogic.

30537 ExFlow Import history data clean-up performance improvements.

30628 Incorrect spelling for ExFlow parameter Choose default quantity for auto get purchase order lines.

30650 We have added support for Vendor portal in combination with ExFlow. You are now able to import invoices from the Vendor portal to ExFlow and let ExFlow handle the approval process. 
Note: minimum version of ExFlow Web 2023.5.0.2 required

30860 Empty derived dimensions gave DimensionAttributeValueSetStorage.addItemValues error when using ExFlow Default dimension combination.

30895 It was possible to code, but not save, on illegal values in ExFlow web when working with an intercompany invoice.

30947 We have made it possible to assign invoices to other users in ExFlow Import Form than yourself.

30951 Sales tax calculation is not working correctly when working with line item charges due to records from import and document form are stored in same table.

30952 Project Intercompany when having sales tax deducted at invoice register is posted with the wrong amount in the reversal journal.

31000 Charges were deleted in some cases for consolidated invoices, when working with charges against project purchase order.

31022 The function Automatic settlement could in some scenarios connect and settle against the wrong invoice.

31031 The periodic job Process attachments parameter Run the job in all companies were not working properly.

31117 When changing the ledger account using the dropdown, an error occurred if the new account belonged to a different account structure.

31158 When the ExFlow workflow for agreement approval where setup to use the reference person connected to a specific vendor. The workflow ended up in an error, stating the workflow contains disabled or deleted user.

31658 India sales tax, improvements to Bill of Entry.