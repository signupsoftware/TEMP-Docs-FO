---
title: View and edit invoices out for approval
sidebar_position: 2
hide_title: true
---
## Edit/view invoice distributed for approval <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

This form shows the selected invoice to view or edit.

ExFlow \| Common \| All Document invoices.

Select the `Edit` button

![Graphical user interface, table Description automatically generated](@site/static/img/media/image99.png)

Use this form to view and edit the data in an invoice that is distributed for approval. Accounts payable personnel typically use this form.

| Buttons (Action pane)|
|:-|:-|
|Save | Save the entered data.|
|Arrows| Toggle between invoices.|
|General| Displays all fields on the invoice header.|
|Overview| Shows a selected number of the header fields and all fields of the lines. Default mode.|
|General/Approve invoice| Click to approve the invoice. |
|General/Restart approval route| Click to create a new approval route. This is used when an approver has returned the invoice to the accounts payable team.|
|General/Retrieve product receipts  | If the item lines on the invoice are not imported, you can retrieve these items from the receipt of the purchase order items instead. This is often used when one invoice corresponds to a receipt, and header level matching only is required. |
|General/Retrieve purchase orders   | If the item lines on the invoice are not imported, you can retrieve these items from the purchase order instead, and header level matching only is required. |
|General/Add penny difference | Add a penny difference row for purchase order invoices. This will automatically add the amount difference between the sum of all lines and the net sum on the header.|
|General/Allocate difference amount | Used to manually trigger amount difference allocation between header and lines.|
|General/Invoice matching | Use to run invoice matching. For example, if a purchase order has been delivered after it has been posted from the ExFlow Import form. This function will rematch the invoice against the purchase order again and attempt a full match.|
|General/Post | Post the purchase order. This option will open up a Dynamics 365 standard form for handling purchase order, but the data will be automatically populated based on the ExFlow lines.|
|General/Show invoice | Open a preview window with attached PDF invoice file. |

|Buttons (Lower pane), Document lines (Line view)|
|:-|:-|
|Add line|Add a new line.|
|Remove|Remove the selected line.|
|Approve line|Click to approve selected line.|
|Suggest approvers|Create an approval route based on the current setup of "Approval and validation rules".|
|Name|The D365 F&amp;O item name.|
|Add approver<br/>(Tab Approvers)|Insert a new line and select an approver.|
|Remove<br/>(Tab Approvers)|Delete the selected line.|
|Approve<br/>(Tab Approvers)|Approve the selected invoice line for a selected user (line). A comment is required.|
|Reject<br/>(Tab Approvers)|The selected user may reject the invoice line, for additional processing. A comment is required.|
|Hold<br/>(Tab Approvers)|The selected user may put on-hold the invoice line. It can be used when the additional information is required before he/she can proceed.|


|Fields (Upper pane), Document header (Line view)|
|:-|:-|
|Number|Displays the invoice number.|
|Status|The current invoice status.<br/>Active: Invoice is posted from the Import form and released for approval.<br/>Approved: All lines on the invoice are approved by the final approver and no approval requirements remains on any line, i.e., the invoice is approved.<br/>Invoiced: The invoice is approved/posted in the Invoice Approval Journal.<br/>Cancelled: The invoice has been cancelled.|
|Voucher|Displays the standard Dynamics 365 voucher number.|
|Posting date|The date when the invoice was posted.|
|Due date|The date when the invoice is due.|
|Invoice date|Invoice date. This will override the posting date, according to the standard D365FO e.g., calculation of due date.|
|Net amount|The invoice amount excluding sales tax (VAT). Credit invoices display a minus (-) sign.|
|Sales tax amount|The sales tax (VAT) amount.|
|Currency|Displays the invoice currency code.|
|Balance| The difference between the amount of the invoice total amd the invoice lines.|
|Purchase order|Purchase order number, if applicable, for the invoice.|
|Reference|The Reference field from Import/invoice is shown.|
|Line amount|The sum of all line amounts.|
|Invoice type|Invoice type is used for classifying invoices.|


|Fields (Lower pane), Document lines (Line view)|
|:-|:-|
|Flow status|**Flow status of the lines:**<br/>None: The first status before it is posted from the Import form and released for approval.<br/>Active: The invoice is posted in import form and released for approval.<br/>Approved: All lines on the invoice are approved by the final approver and no approval requirements remains on any line, i.e., the invoice is approved.<br/>Received: Not applicable<br/>Invoiced: The invoice is approved/posted in the Invoice Approval Journal.<br/>Cancelled: The invoice has been cancelled.|
|Line type|**Shows the line type.**<br/>Ledger: Line with General ledger accounting only.<br/>Item: Line with stocked items and linked to a purchase order.<br/>Charges: Charges that are added to a purchase order invoice.<br/>Project: Line related to the Project module with a project id.<br/>Asset: Line related to the Fixed assets module with an asset id.<br/>Procurement: Line that defines the Procurement category.<br/>Landed cost: Line that defines the landed cost category.|
|Quantity|The line’s quantity. For expense invoices the default value is 1.|
|Unit price|The invoice line’s unit price.|
|Amount|The line sum.|
|Unit|Unit of measure.|

|Fields (Lower pane), Line details (Line view), Tab Dimensions|
|:-|:-|
|Account|**Enter or select the accounting dimensions values.**<br/>Alt + Up arrow: Displays the account structure’s dimensions.<br/>Alt + Down arrow: Displays the current dimension’s values.|
|Financials dimensions|Displays the selected dimensions values.|
|Other dimensions|Displays the non-financial dimensions which apply to the selected line type (Ledger, Asset etc.).|
|Below fields for Procurement type lines only:|
|Procurement category|Selection of the Procurement category.|
|Below fields for Landed cost type lines only:|
|Voyage|Voyage ID|
|Cost type code|Cost type code.|
|Bellow fields for Project type lines only:|
|Sales currency|Sales currency|
|Sales price|Sales price|
|Project date|Project date|
|Project sales tax group|Project sales tax group|
|Project item sales tax group|Project item sales tax group|

|Fields (Lower pane), Line details (Line view), Tab Approvers|
|:-|:-|
|Is role|Check marked when a Role is selected in the field User/Role.|
|User/role|Select a User or a Role to approve this invoice line. A Role is a predefined group of users where any one of them can approve the invoice line/s.|
|Comment|Displays the username and the comments that the user has added.|
|Approval date|Displays the date of approval.|
|Restarted date|If the button "Restart approval route" has been clicked, this date is shown.|
|Approved by|The name of the user who has approved the selected invoice line.|
|Assigned|The number of calendar days in which the line has been waiting for approval.|
|Approver status|Displays the user approval status. If the approver is waiting, it is set to "current".|
