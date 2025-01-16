---
title: Post control introduction
sidebar_position: 1
hide_title: true
custom_edit_url: null
---
## Post control <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

This function gives the accounts payable team the option to add an extra layer of quality assurance either before an invoice is routed for approval, before the final posting takes place or at both times.

The typical usage of this function is, a company has set up batch posting of invoices and the approvers are the persons that set the coding on an invoice, and the accounting department still would like to double-check the accounts, project, fixed assets, or dimension values used before the invoice is finally posted. The invoices are approved in a new form called 'Post control' and is similar to the ExFlow 'Document' form.

<video src="https://docs.signupsoftware.com/finance-operations/video/Post_control_demo.mp4" width="600" height="400" controls></video>

![Graphical user interface, application Description automatically generated](@site/static/img/media/image113.png)

One or several invoices may be marked and "Set as controlled" by using the button in the header. As long as an invoice has not been finally posted, the invoice can also be reversed to "Not controlled" again. If the parameter for "Allow corrections" is enabled in the setup, it is possible to "Correct invoice" when it is already approved and you are able to change for e.g. financial dimensions directly in post control form without need to restart approval route.
Once the invoice is set to controlled, the batch job can be used to post the invoice/s. Depending on the settings in the ExFlow parameters, the post control function can also be active when invoices are manually posted in the invoice journal.


|Buttons (Action pane)| |
|:-|:-|
|Cross company|A tick box is populated called "Show all companies" and if ticked, all companies’ invoices will be displayed. The standard filtering can be used to set up a user which will by default only see (e.g.) 2 out of 10 companies in Cross company mode.|
|Edit|Open the selected invoice in Edit-mode.|
|Set as controlled|Set the marked invoice/invoices to status ‘Controlled’.|
|Set as not controlled|Set the marked invoice/invoices to status ‘Not controlled’.|
| Correct invoice | Change invoice coding without need to restart approval route. Enable parameter for "Allow correstions" is needed, see section for setup and work with post control.|
|General/Cancel invoice|Cancel invoice is used when an invoice that has been processed by ExFlow should be cancelled from D365 FO. The invoice will be reversed from the invoice register transactions and the ExFlow status will be set to ‘Cancelled’.<br/>When cancelling an invoice, you will be given a choice to re-use the invoice and import it again in the ExFlow import form. This can be useful if (for example) the invoice should be moved to another company within the same D365 FO installation.<br/>Note - do not forget to set up a cancellation journal in the ExFlow parameters.|
|General/Show invoice|Displays the invoice image.|
|General/Invoice History|Invoice History opens a new form where all the details about the invoice process can be tracked for the selected invoice.<br/>See more details about this functionality below.|


|**Fields (Upper pane)**| |
|:-|:-|
|Show all (check box)|Ticked: Show all invoices that have been processed by ExFlow, regardless of Invoice status and Flow status.<br/>Unticked: Which invoices are displayed are controlled by the Invoice status and Flow status fields.|
|Show all companies|This is used in combination with the ‘Cross company’ button and if pushed, the header is to display all invoices for companies running ExFlow.|
|Invoice status|Select to show invoices with a specific status. ExFlow checks the status on all lines for an invoice and sets the flag according to the line with the "lowest" status.<br/>**None**: The first status before it is posted and released for approval.<br/>**Active**: The invoice is posted and released for approval.<br/>**Approved**: All lines on the invoice are approved by the final approver and no approval requirements remains on any line, i.e., the invoice is approved.<br/>**Received**: Not applicable<br/>**Invoiced**: The invoice is approved/posted in the Invoice Approval Journal.<br/>**Cancelled**: The invoice has been cancelled|
|Flow status|The Flow status and the approval fields are available only when Invoice status is "Active", otherwise they are not obtainable.<br/>**None**: An approver has a status ‘None’ when he/she is "expecting" an invoice line to approve. A previous approver in the route may need to approve the line first.<br/>**Current**: The approver who has the invoice line to approve.<br/>**Rejected**: The approver has rejected the invoice line to be handled by accounts payable personnel. A comment is mandatory.<br/>**On Hold**: The approver is waiting for further information before he/she can handle this line. A comment is mandatory.|
|Approver|If filtering is required on a unique approver.|
|Invoices without lines or approvers|This filter can be used to find invoices that are missing either approvers or only have header information.|
|Show only coded lines|This filter can be used to check only invoices with the coded lines.|
|Show invoices with inactive approvers|This filter can be used to check invoices with approvers assigned, that have been inactivated as ExFlow users.|


| Fields                         | |
|:-|:-|
| Company Id                     | Displays the company an invoice belongs to.                                                                                   |
| Requires post control          | Displays if 'Post control' is activated for this invoice.                                                                     |
| Post controlled                | Display' if the invoice is 'controlled' or not                                                                                |
| Document type                  | Always of type "invoice".                                                                                                     |
| Voucher                        | Voucher numbers created by standard Dynamics 365.                                                                             |
| Invoice                        | Displays the invoice number.                                                                                                  |
| Status                         | Displays the invoice status.                                                                                                  |
| Has Chat                       | Field is checked if the invoice has chat messages.                                                                            |
| Confidential                   | If an invoice should be handled as confidential meaning it can only be view by approvers that has those specific permissions. |
| Vendor account                 | Displays the Dynamics 365 standard Vendor id.                                                                                 |
| Name                           | Displays the Dynamics 365 standard Vendor name.                                                                               |
| Amount in transaction currency | The invoice amount in transaction (invoice) currency. If credit note (-) minus sign.                                          |
| Sales tax amount               | The actual sales tax amount on this invoice.                                                                                  |
| Currency                       | The invoice currency code (transaction currency).                                                                             |
| Posting date                   | The date the invoice was posted.                                                                                              |
| Invoice date                   | This date will override the posting date, according to standard Dynamics 365 e.g., Calculation of due date.                   |
| Due date                       | Displays the invoice due date.                                                                                                |
| Remaining amount               | If any payments are settled, these are deducted from this field, and only the remaining amount to settle/pay is shown.        |
| Initiator                      | The user who has posted this invoice for approval in the ExFlow Import form.                                                  |
| Reference                      | The Reference field from the Import/invoice is shown.                                                                         |
| Purchase order                 | If applicable, the purchases order number is displayed referring to the invoice.                                              |
| Admin comment                  | If any comments, either from an approver or the accounts payable team are made they are shown here.                           |
| Misc 1-10                      | Displays the Charges fields. (These fields are used for extra interpretated data from scanning).                              |
| Post control made by           | The user in Dynamics 365 that has performed the final control.                                                                |


|Fields (Lower pane) This pane shows the lines on the selected invoice.| |
|:-|:-|
|Document line type|**Shows the line type.**<br/>Ledger: Line with General ledger accounting only.<br/>Item: Line with stocked items and linked to a purchase order<br/>Charges: Charges that are added to a PO/item invoice.<br/>Project: Line related to the Project module with a project id.<br/>Asset: Line related to the Fixed assets module with an asset id.<br/>Procurement: Line that defines the Procurement category.|
|Accounting details|Shows coding details for the line.|
|Quantity|The line’s quantity.|
|Unit price|The unit price.|
|Amount|The line’s total amount.|
|Flow status|**Flow status is the lines status:**<br/>None: The first status before it is posted in the ExFlow Import form and released for approval.<br/>Active: Invoice is posted in import form and released for approval.<br/>Approved: All lines on the invoice are approved by the final approver and no approval requirements remains on any line, i.e., the invoice is approved.<br/>Received: Not applicable<br/>Invoiced: The invoice is approved in the Invoice Approval Journal.<br/>Cancelled: The invoice has been cancelled.|
|Approvers|**Shows the approval route and each approver’s actual status for the line.**<br/>None: An approver has the status ‘None’ when he/she is "waiting" for an invoice line to approve. A previous approver in the route may need to approve the line first.<br/>Current: The approver who has to approve the invoice line is set to ‘Current’.<br/>Rejected: The approver has rejected the invoice line to be processed by the accounts payable team. A comment is mandatory.<br/>On Hold: The approver is waiting for further information before he/she can process this line. A comment is mandatory.|
|Comments|Displays the comments for the selected row.|