---
title: Release Notes
sidebar_position: 2
hide_title: true
custom_edit_url: null
---

## Release 2.15.4
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

#### INTRODUCTION
A new version of ExFlow for Microsoft Dynamics 365 for Finance and Operations has been released as of October 2024.
Below describes all the included changes and corrections that have been included in this and earlier patches release based on the latest major release 2.15. 

This release includes our new subscription module, released in ExFlow 2.14, enabling users to conveniently purchase functionality subscriptions directly from the Azure Marketplace.

#### Version numbers
The described release in this document supports the following versions.

| D365 FO Platform version | D365 FO application version nb | ExFlow version nb |
| ----------- | -------------- | -------------- | 
| Update 63 (7.0.7198.66) or later | 10.0.39 (10.0.1860.56) | 2.15.4 |

#### CORRECTIONS
**42400** An error message Range no 48 not found was displayed occasionally when working in ExFlow Import form.

**43367** An extension on class PurchInvoiceJournalCreate made it possible to post purchase order based invoices even if the matching result failed in standard.

### RELEASED IN 2.15.3
#### Improvements
**41628** We have added more functionality to our new AI/ML service that is used in combination with ExFlow Web.

#### Corrections
**42931** Importing of invoices to ExFlow from Invoice Capture was not working properly in the later releases of Finance and Operations. 

### RELEASED IN 2.15.2
#### Improvements
**31045** We have made it possible to view invoices in Import Form through the image URL exposed in entities.
**36770** We have made the core ExFlow tables available for AllowRowVersionChangeTracking.
**40997** We have created a new list of entities to use when running with Azure Synapse Link for Dataverse.

#### Vendor statement
As part of this release, we have made several changes and added more functionality into the vendor statement functionality.
**41738** New columns added for vendor name to Statement form and Reconciliation form.
**41739** We have improved the validation checks between the from date and the minimum date imported from the statement lines.
**41740** We have improved the validation for due date. The Due date is only a relation to the invoice due date and shall not be validate against to date.
**41743** The statements are now editable if the status is open. It’s open for change of dates, amounts and add/remove lines. If the status of the statement is reconciled, editing of the statement it not possible.
**41744** The buttons for Validate and Reopen are now greyed out when the statement is Posted.
**41745** A new form is created called Vendor document status. Found under ExFlow common -Inquiries and reports - Vendor document status. The form shows transactions from the data source for vendor and payments. The users can set the transactions as “set as fully reconciled” or “set as not reconciled”.
**41746** New fields have been added in staging table and rework of logic for Vendor statement form for opening balance and ending balances. Opening balance amount from staging table will be added as line into the statement and can be manually match against vendor transactions. Settlement lines can be manually matched against more than one vendor transaction.
**41747** Validation added of imported statement lines vs ending balance.
**41748** Imported payment lines from statement can now be matched against open/settled vendor payments.

#### Corrections
**40751** When running purchase order based invoices in ExFlow in combination with Tax calculation service, taxes were not calculated correctly on line level.
**41011** The document date where not transferred correctly to ExFlow web.
**41394** The upgrade script for the released feature (37320) in 2.15, was not triggered automatically.
**41567** The released feature (37320) in 2.15, added an extra validation causing previous setup with multiple values for one column (for example sales tax group) not working properly.
**41651** Multiple forms were shown in the ExFlow menu, unless ExFlow were enabled in the legal entity.
**41681** Cost invoices with line type Ledger were not created with the correct amount upon import.
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