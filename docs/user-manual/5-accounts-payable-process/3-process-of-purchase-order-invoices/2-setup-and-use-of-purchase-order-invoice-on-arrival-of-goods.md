---
title: Setup and use of purchase order invoice on arrival of goods
sidebar_position: 2
hide_title: true
---
## Setup and use of purchase order invoice on arrival of goods <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

### Introduction

This section is an overview of the process on how the batch job "Auto match purchase orders on arrival of goods" works, and a description of how to work with quantity differences in general. The purpose of the batch job "Auto match purchase orders on arrival of goods" is for companies that still would like to invoice register purchase order invoices, even if the arrival of goods have not yet been received. In other words, they receive the invoice before the goods have arrived.

### Invoices with quantity variance

When invoices are imported via the ExFlow import form and OCR recognition is used on the line level, ExFlow will try to match the lines based on vendor item number, item number, unit price and quantity. If purchase order lines are fetched manually or automatically, created based on a purchase order number in the invoice header, the line will be copied from the purchase order and the quantity, unit price, discounts etc. need to be modified manually to match the invoice lines.

When the invoice is posted from ExFlow import form, it is automatically invoice registered in D365. ExFlow based on standard D365 invoice validation parameters (no matching, two-way matching or three-way matching) will match the invoice, and if possible, automatically approve it, given the tolerance settings.

However, if three-way matching is used, and if there is a quantity difference (meaning that the invoice line has a greater quantity than the receipted line on the order), the invoice lines will be set as "hold" and matching status will be updated to "Quantity variance". Invoice will be visible for the approvers in the folder for "On hold".

![A screenshot of a computer Description automatically generated](@site/static/img/media/image138.png)

### To manually handle quantity variance

When the receipt line on the purchase order is updated, the invoice can be edited via the ExFlow Document form and clicking the button in the action pane "Invoice matching" can then rematch the invoice.

If the invoice matches on quantity (the invoice quantity is equal to or less than the remaining quantity on the order), the invoice will be automatically approved. If not, the line will be set to 'Current' status and sent out for manual approval in the ExFlow web.

### Batch job Auto match purchase order invoice on arrival of goods

This batch job will process received purchase orders that relate to invoices that are 'on hold' with a quantity difference within a specific time frame. After the time frame has passed, the invoice line will be released from status "On Hold" to 'Current' and approvers must decide what to do with the purchase order and the invoice. If the receipt lines are updated before the time frame has passed, and the quantity and unit price from the invoice line matches the order, the invoice will be automatically approved, and the administrator/approver will not have to intervene.

### Settings

Before the batch job can be used, the setting "Number of days before system release of quantity variance invoices" must be set. This means if it is set up with 3 days as per the screenshot below, the system will (from the invoice register date) have the invoice set to "On Hold" and try to update and auto match the invoice against goods on arrival for up to 3 days after the invoice registered. After this timeframe, an email is sent out for manual intervention to the ExFlow web for the purchaser to take appropriate action.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image139.png)

### Process

1\. The invoice is imported and posted from the ExFlow import form, and we view the invoice in the ExFlow Document form. The invoice line/s is now 'on hold' and the status for the line is 'Quantity variance'. The invoice will stay on hold as long as the purchase order is not received or until an administrator releases it, or the batch job updates the invoice line. At the same time, the invoice is posted with a comment on header level for the invoice with matching date and a quantity variance.

2\. If a purchaser logs in to the ExFlow web and looks in the 'on hold' folder, the invoice can be seen with the same comment. The purchaser then knows that the system will try to match the invoice within the company's setup time frame for arrival of goods. This process could also be, for some companies, that the purchasers know that if they have invoices on hold with a quantity variance, and it is their responsibility to contact the Vendor/s and agree on shipment delays.

3\. When the batch job runs and the purchase order is updated with a quantity (arrival of goods), if the line quantity updated matches with the invoice line quantity. then the line is auto approved, and the purchase order will be ready for final posting.

This batch job can be either run manually or set to run daily.

The batch job has now tried to match all the purchase orders with a quantity difference. As shown below, two of them have now been automatically matched, approved and are ready for final posting.

4\. In this example after 3 days the order will be released (for this image it is set to 0 days to trigger the functionality) and the status will change to 'Current' meaning the purchaser will be able to view the purchase invoice in his/her normal inbox.

The batch job has now released the invoice.

The invoice is now moved to the purchaser with the status 'Current' and he/she can see the updated comment that the invoice has been released.

The purchaser must now process the invoice, meaning that the batch job will no longer update the invoice lines. After the underlying order has been receipted, the purchaser must manually approve the invoice. The invoice is now ready for final posting.

This job also runs the function "Suggest approvers" as a part, to ensure that any changes in the status of the purchase order that might trigger a different approval flow are taken into consideration.
