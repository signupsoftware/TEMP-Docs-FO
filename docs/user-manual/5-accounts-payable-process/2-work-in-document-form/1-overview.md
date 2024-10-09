---
title: Overview
sidebar_position: 1
hide_title: true
custom_edit_url: null
---
## Overview <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

### Document form All

This is the Overview form of all invoices that are distributed for approval. By default, it is filtered for "Active" invoices, meaning they are out for approval. Changing the filter to "Approved" you can view the full list of invoices already approved and processed.

ExFlow \| Invoices \| Document forms \| Document form All

![Graphical user interface, application Description automatically generated](@site/static/img/media/image98.png)

In the lower section you can see the marked invoice with its connected lines, and the accounting details and approvers with its actual status.


|Buttons (Action pane)| |
|:-|:-|
|Cross company|Opens a new checkbox "Show all companies". When ticked, all companies’ invoices will be displayed. The standard filtering can be used (for example) a user will by default only see 2 out of 10 companies in cross company mode.|
|Edit|Open the selected invoice in Edit-mode.|
|General/Cancel invoice|Cancel the invoice is used when an invoice that has been processed by ExFlow should be cancelled. The invoice will be reversed from the invoice register transactions and the ExFlow status will be set to ‘Cancelled’. To cancel an invoice, at least one line must be rejected.<br/>When cancelling an invoice, you will be given a choice to re-use the invoice and import it again in the ExFlow Import form. This can be useful if (for example) the invoice should be moved to another legal entity within the same D365 FO installation.<br/>Do not forget to set up a cancellation Journal name in the ExFlow parameters.|
|General/Invoice timeline|opens the timeline for and details about the invoice can be followed for the marked invoice. More detail for the functionality<br/>https://docs.exflow.cloud/finance-operations/docs/user-manual/Logging/invoice-timeline|
|General/Show invoice|Displays the invoice image.|
|General/Hide side by side|Hides the preview section displaying invoice image from the form.|

|Fields (Upper pane)| |
|:-|:-|
|Show all (check box)|Ticked: Show all invoices which ever have been handled by ExFlow, regardless of Invoice status and Flow status.<br/>Unticked: Shows invoices which are controlled by the Invoice status and Flow status filters.|
|Show all companies|This is used in combination when the ‘Cross company’ button is pushed in the header to display all invoices for companies running ExFlow.|
|Invoice status|Select to show invoices with a specific Status. ExFlow checks the status on all lines for an invoice and sets the flag according to the line with the "lowest" status.<br/>**None**: An invoice has a status of ‘none’ before it is posted and released for approval.<br/>**Active**:The invoice is posted and released for approval. All invoices that contain at least one line of active approvers have this status.<br/>**Approved**: All lines on the invoice are approved by the final approver and no approval requirements remains on any line, i.e., the invoice is approved. This means that the invoice can be finally posted. <br/>**Received**: Status related to purchase order in std D365. N/A for ExFlow.<br/>**In journal**:Invoice that are available in journal, but not yet final posted, can be because of batch posting error.<br/>**Invoiced**: The invoice is approved and final posted, ready for payment.<br/>**Cancelled**: The invoice has been rejected and cancelled.<br/>**Unprocessed**: Only applicable for customers with high volume invoices using the Summarize function.|
|Approver status|Flow status and the approver fields are available only when Invoice status is "**Active**", otherwise they are not obtainable.<br/>**None**: An approver has status None when heshe is "waiting" for an invoice line to approve. A previous approver in the approval route may need to approve the line first.<br/>**Current**: The approver who has the invoice line to approve.<br/>**Approved**: When all approvers assigned to the invoice and invoice lines have approved the invoices.<br/>**Rejected**: The approver has rejected the invoice line to be handled by accounts payable. A comment is mandatory.<br/>**Hold**: Manually set byt the approver if he/she are waiting for further information before he/she can handle this line. a comment is mandatory. Also used for purchase order invoice process when lines are blocked, for example if goods are not yet received.<br/>**Forwarded**: Lines are forwarded to another approver.<br/>**All**: Shows all status codes as above.|
|Approver| Select the user you want to search for|
|Company Id|Displays the company an invoice belongs to.|
|Document type|Always of type "Invoice".|
|Voucher|Voucher numbers created by standard Dynamics 365.|
|Invoice|Displays the invoice number.|
|Status|Displays the invoice status. See types of invoice status above.|
|Has Chat|Field is checked if the invoice has chat messages.|
|Vendor account|Displays D365 FO standard Vendor id.|
|Name|Displays D365 FO standard Vendor name.|
|Amount in transaction currency|The invoice amount in transaction (invoice) currency. If credit note (-) minus sign.|
|Sales tax amount|The actual sales tax amount on this invoice.|
|Currency|The invoice currency code (transaction currency).|
|Posting date|Date when the invoice was posted.|
|Invoice date|Invoice date – this will override the posting date, according to standard D365FO settings, e.g., Calculation of due date.|
|Due date|Displays the invoice due date.|
|Remaining amount|If any payments are settled, these are deducted from this amount. Only the remaining amount to settle/pay is shown.|
|Initiator|The User ID who has posted this invoice for approval in the Import form.|
|Reference|The Reference field from the Import/invoice is shown.|
|Purchase order|If applicable, the Purchase order number referring to the invoice.|
|Comment|Display’s the comment from invocie lines.|
|Invoice remainder|If it exists an invoice remainder.|
|Prepaid invoice|Display’s if an invoice is prepaid.|
|Has attachments|Display’s if an invoice has an attachment.|
|Admin comment|Displays added comments, either from an approver or accounts payable users.|
|Misc 1-10|Displays the Charges fields. (Fields used for extra interpretated data from scanning, e.g., Freight and Duty). The Misc 6 field is used for agreement number.|
|Settled amount in standard currency|Amount Settled in the accounting currency.|
|Settled currency|Amount settled in the transaction currency.|
|Last Settlement|The date of last Settlement.|


|Fields (Lower pane) This pane shows the lines on the selected invoice.| |
|:-|:-|
|Document line type|Shows the line type.<br/>**Ledger**: Line with General ledger accounting only.<br/>**Item**: Line with stocked items and linked to a purchase order<br/>**Charges**: Charges that are added to a PO/item invoice.<br/>**Project**: Line related to the Project module with a project id.<br/>**Asset**: Line related to the Fixed assets module with an asset id.<br/>**Procurement**: Line that defines the Procurement category.<br/>**Landed cost**: Line that defines the landed cost category.|
|Accounting details|Shows the accounting details for the line.|
|Purchase quantity|The line’s quantity.|
|Unit price|The unit price.|
|Amount|The line’s total amount.|
|Net/Gross amount|Calculated net/gross amount per line.|
|Calculated sales tax amount|Calculated sales tax amount.|
|Sales tax code|Display’s the tax code based on the tax combination per line.|
|Percent|Calculated tax displayed in percentage per line.|
|Non deductible %|Display’s nondeductible VAT in percentage.|
|Discount|Discount in percentage.|
|Line discount|Discount amount.|
|Sales tax group|Display’s the Sales tax group|
|Item sales tax group|Display’s the Item sales tax group|
|Match status|Display’s purchase order invoice match status.|
|Matching comment|Display’s purchase order invoice matching comment depending on the match status.|
|Matching date|When the purchase order invoice has been matched towards the purchase order.|
|Flow status|Flow status of the lines:<br/>**None**: The initial status before it is posted in the Import form and released for approval.<br/>**Active**: Invoice is posted in the import form and released for approval.<br/>**Approved**: All lines on the invoice are approved by the final approver and no approval requirements remains on any line, i.e., the invoice is approved.<br/>**Received**: Not applicable<br/>**Invoiced**: The invoice is approved and posted in the Invoice Approval Journal.<br/>**Cancelled**: The invoice has been cancelled.|
|Approvers|Shows the approval route and each approver’s actual status for the line.<br/>**None**: An approver has status None when he/she is "waiting" for an invoice line to approve. A previous approver may need to approve the line first.<br/>**Current**: The approver who has the invoice line to approve.<br/>**Rejected**: The approver has rejected the invoice line to be handled by accounts payable. A comment is mandatory.<br/>**On Hold**: The approver is waiting for further information before he/she can handle this line. A comment is mandatory.|
|Replacer|Display’s if the line has been approved by a replacer.|
|Comments|Displays the comments for a line.|
|Configuration|If the setting "Show inventory dimensions" in ExFlow parameter, tab purchase order is switched on this fields will display the configuration from the attached purchase order line.|
|Color|If the setting "Show inventory dimensions" in ExFlow parameter, tab purchase order is switched on this fields will display the color from the attached purchase order line.|
|Size|If the setting "Show inventory dimensions" in ExFlow parameter, tab purchase order is switched on this fields will display the size from the attached purchase order line.|
|Style|If the setting "Show inventory dimensions" in ExFlow parameter, tab purchase order is switched on this fields will display the style from the attached purchase order line.|
|Name|The D365 F&amp;O item name.|
|Product name|The D365 F&amp;O product name.|
|Vendor item number|The External vendor’s item number from the ExFlow import form.|
|Vendor item description|The External vendor’s item name from the ExFlow import form.|
