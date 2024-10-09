---
title: Agreements overview
sidebar_position: 3
hide_title: true
custom_edit_url: null
---
## Agreements overview 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow \| Setup \| References \| Agreements

An agreement can either be used and matched towards a cost invoice based on only header information or if needed based also on a line level. It all depends on how detailed the setup is done for the agreement functionality.

![Graphical user interface, table Description automatically generated](@site/static/img/media/image38.png)


|Filter| |
|:-|:-|
|Filter|Select filter criteria|
|Show all|Show all agreements regardless of status.|
|Show active agreements|Display’s only active agreements.|
|From date|Filter agreements on from date.|
|To date|Filter agreements on to date.|
|Approval status|The approval of the actual agreement status (if activated or not).|


|Buttons (Action pane)| |
|:-|:-|
|Save|Save|
|Edit|Edit the agreements.|
|New|Add a new Agreement.|
|Cross company|Show agreements in cross company view|
|Delete|Delete the selected Agreement.|
|Attachments|View the marked agreements attachments.|
|Workflow|If activated - ExFlow workflow for agreement approval.|
|Maintain<br/>Inactivate an agreement|This button will be active for agreements that are active and greyed out for agreements that are inactive. It is possible to select one or multiple agreements to inactivate.|
|Maintain<br/>Activate an agreement|This button will tick the active box. This will only tick the active check box for approved agreements if the ExFlow agreement workflow is activated, otherwise (No workflow is used) it will be available for all inactive agreements. This button will be active for agreements that are inactive and greyed out for agreements that are active. It is possible to select one or multiple agreements to activate.|
|Maintain<br/>Create self-billing invoice|Will only be active if the selected agreement has one and only one attachment of the type "self-billing invoice image". A new invoice will be automatically created with the image and based on the line attached to the main agreement. The invoice will after the creation be ready to be imported in ExFlow import form along with the other vendor invoices.|
|Copy<br/>Extend selected agreement|Extend the selected agreement with a new time period. A new window will open and for date selections.|
|Copy<br/>Copy selected agreement|A new agreement(s) will be created that are copied of the selected agreement(s), but they will not be marked as active.|
|History<br/>Agreement history|Display’s the invoice transactions and invoice images posted against the actual Agreement.|
|History<br/>View side by side|Display’s a side-by-side view of the documents attached and set as default document|

|Fields| |
|:-|:-|
|Company|Company where the agreement is created, Company Id.|
|Active|Active or deactivated the selected Agreement.|
|SBI|Self-billing invoice agreement.|
|Number sequence|Unique ID for the record in the database.|
|Approval status|If an agreement is approved or in draft mode, used if a workflow is attached to approve an agreement before it can be used.|
|Agreement number|Unique Agreement reference that is compared with the MiscHead6 (Agreement number) field in ExFlow import XML file.|
|Reference|If the Agreement should be validated against an invoice reference to be matched.|
|Copy Reference at import|Fill in a value that will be automatically copied to the Reference field in the ExFlow Import form when an Agreement is matched with an invoice.|
|Vendor account|The Vendor for which the Agreement should be valid.|
|Name|Vendor account name.|
|Posting proposal id (advanced)|Connecting posting proposal to code the invoice matched with the agreement within import.|
|Start date|Start date from when the agreement should be active, compared with the invoice date.|
|End date|End date when the agreement is no longer valid, compared with the invoice date.|
|Last invoice date|Displays the date when the last invoice was matched and posted against an Agreement.|
|Invoice recurrence|Select a period Type that determines the frequency of the recurring invoice.<br/>The following recurrences are available:<br/><table><tbody><tr><td>None</td><td>Recurrence is not set</td></tr><tr><td>Daily</td><td>Once per day</td></tr><tr><td>Bi-Daily</td><td>Once every second day</td></tr><tr><td>Weekly</td><td>Once every week</td></tr><tr><td>Bi-Weekly</td><td>Once every two weeks</td></tr><tr><td>Monthly</td><td>Once a month</td></tr><tr><td>Bi-Monthly</td><td>Once every two months</td></tr><tr><td>Quarterly</td><td>Once every quarter (three months)</td></tr><tr><td>Half year</td><td>Once every six months</td></tr><tr><td>Yearly</td><td>Once a year</td></tr></tbody></table> *E.g, if set to Quarterly, if more than one invoice is received within one quarter, it will be sent out for approval regardless if its matching or not.*
|Invoice frequency|Period length of invoice frequency <br/>The following recurrences are available:<br/><table><tbody><tr><td>None</td><td>Default value, frequency is not set</td></tr><tr><td>Daily</td><td>Once per day</td></tr><tr><td>Weekly</td><td>Once every week</td></tr><tr><td>Monthly</td><td>Once a month</td></tr><tr><td>Quarterly</td><td>Once every quarter (three months)</td></tr><tr><td>Yearly</td><td>Once a year</td></tr></tbody></table> 
|Number of invoices|Number of invoices per specified invoice Frequency period.|
|Currency code|Select currency code of the agreement.|
|Max invoice amount|The maximum invoice amount that is allowed for the Agreement to match|
|Total invoice amount|The value of the total Agreement.|
|Amounts include sales tax|If the matching should be based on the gross or net amount.|
|Sales tax group|Sales tax group of the selected vendor, can be changed manually.|
|Item sales tax group|Item sales tax group defaulted from ExFlow parameters, can be changed manually.|
|Actual sales tax amount|Tax amount that can be added to the agreement.|
|System approved amount|Summary of how much has been already spent of the Agreement.|
|Matched invoice amount|Summary of how much has been automatically matched against the Agreement.|
|Agreement action type|What type of action that will take place when an agreement is not within the setup criteria.<br/>**Send out for approval** – If the invoice matches an agreement but not met the criteria, the invoice will be sent out for approval.<br/>**Put on hold -** If the invoice matches an agreement but not met the criteria, the invoice will be put in On Hold status.<br/>**Manual approval** – Although if the invoice matches an agreement and fulfills the criteria, the invoice will be sent out for manual approval.|
|Approval text|Displays the text that will be saved in the approver’s Comment field when an automatic approval takes place.|
|Responsible person|The person responsible for the contract.|
|Index increase percentage|Used to increase an agreement’s amount by percentage when it is duplicated.|
|Description|A field where a description text that can be added that explains what this Agreement is concerning.|

| Line Buttons| |
|:-|:-|
|Add line| Add a new Agreement line.|
|Delete line| Delete the selected Agreement line.|
|Copy selected agreements| Duplicates the selected line except the Invoice date. Will copy from the selected agreement line/lines and create new line/lines and leave the dates value blank for the newly created line/lines.|
|Attachments|Display's the attachment attached against the actual line, used for self-billing invoice.|

| Line fields  | |
|:-|:-|
|Line number|Line number|
|Amount|Used either for self-billing or agreement matching on monthly basis.|
|Tolerance amount|Tolerance amount between an invoice and an agreement.|
|Tolerance amount percentage|Tolerance amount percentage between an invoice and an agreement.|
|Invoiced amount|Invoiced line amount.|
|Invoice date|Expected invoice date or/and invoice date for the created self-billing invoice.|
|Terms of payment|Connected to std MSD365 terms of payment functionality.|
|Payment ID|Payment id for the Self-billing invoice, if not want to use the vendor account payment id.|
|SBI created|Will be ticked if a self-billing document has been created.|
|Invoice date|The invoice date on the self- billing invoice, and the invoice is expected to be posted.|
|Expected date|When the invoice is expected to arrive.|
|Matching error policy|Which matching policy that should be applied.|
