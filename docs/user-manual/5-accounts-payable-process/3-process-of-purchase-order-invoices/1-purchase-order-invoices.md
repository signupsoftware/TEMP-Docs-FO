---
title: Purchase order invoices
sidebar_position: 1
hide_title: true
---
## Purchase order invoices <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

Matching an invoice against a purchase order can be done in several ways. An invoice can either be interpreted at the line level or at the header level. If line level interpretation is used the system will automatically fetch the correct purchase order and match the invoice lines towards the purchase order lines by using the item numbers or external item numbers, followed by quantity and price. ExFlow uses the matching principles set up within D365 FO. This means, for example, that if three-way matching is set up in D365 FO, ExFlow will match purchase order invoices against the delivered quantity, price, and item number. Depending on whether tolerances are set up or not, ExFlow will also take those settings in consideration.

If interpretation is not used, or you would like to rematch an invoice against another purchase order, the buttons 'Retrieve product receipts' or 'Retrieve purchase orders' can be used.

ExFlow purchase order matching also supports procurement categories which can be used if there is no need for inventory quantities.

### Lot ID and Purchase Order Matching

The Lot-id field is the critical value that links the Purchase Order item in D365 FO to the information captured from the invoice. ExFlow attempts this matching in the following manner:

1. ExFlow checks to see if the vendor supplied Item ID on the Invoice matches with an Item ID in the AX invoice register. If it finds a match, it checks to see if that item exists on the Purchase Order, and if so, matches it.
2. ExFlow checks to see if the vendor supplied Item ID on the Invoices exists anywhere in the AX Item Masterfile, in the "External Item" field (using a combination of the Vendor and Item ID). If it finds a match, it checks to see if that Item exists on the Purchase Order and if so, matches it.
3. ExFlow checks to see if the vendor supplied Item ID exists in the "External Reference" field in the Vendor Item Group (using a combination of the Vendor and Item ID). If it finds a match, it checks to see if that item exists on the Purchase Order, and if so, matches it.
4. If a match is found in the above conditions, ExFlow will select the first match according to delivery date, if it's not already matched to the invoice.
5. From there, the following will take place in this order to achieve a match:
    - If the "Inventory Model Group" IS mandatory to receive (*Inventory/Setup/Item Model Groups/Physical Update/Receiving Requirements is ticked):*
        - Purchase Order No on the Invoice line
        - Item ID
        - Quantity on invoice equals quantity ordered
        - The remaining purchase financial amount is equal to or greater than the invoice amount.
        - The PO line has a status of "back order" or "received"
        - The PO line has a Type of other than those with multiple deliveries
        - The PO line has not been deleted.
        - If the above conditions still do not match, ExFlow will again attempt to match but without any regard to the quantity ordered.
    - If the "Inventory Model Group" is NOT set to Mandatory, then the above is also true except the remaining purchase financial amount is not checked.
    - If still no match is found, the above will be run, but with no check against either the quantity ordered or the purchased financial amount.

Note that in all circumstances, the quantity is converted according to the set unit conversion rules.

### Charges

Charges can be used in different ways. It is recommended when working with purchase order matching that a 'penny difference' charge is set up. ExFlow will, for example, automatically add a penny difference line if a difference exists between the sum of the lines and the net amount of the invoice that is below 0,99 SEK. This penny difference line will never be sent out for approval and will always be automatically matched.

Charges can also be set up to be used with, for example, Freight costs. If a freight cost is interpreted from the invoice and added to the field Misc. Charge 1 at the header level (ExFlow supports up to five different charges code per invoice), ExFlow will automatically create the Charge line with the charges code set up for 'Misc. charges 1' in the ExFlow parameters. ExFlow also supports matching between charge lines from an invoice against charges that are set up on purchase orders.

There is also the possibility to automatically accept charges that are below a specific amount, and these can be automatically created and approved on the invoice matched to an purchase order. This could be very useful when you have a large purchase order that is approved and matched against an invoice, yet there is a small freight cost of (for example) 139 SEK and you do not want the invoice to be sent out for approval just because the freight cost was not added as a charge on the original purchase order.

ExFlow also supports matching against partial deliveries - for more details see section "Auto match purchase order invoices on arrival of goods"

### PO invoices with "Override purchase tax" field
PO invoices that have "Override purchase tax" field on the header set to yes, can update "Sales tax group" from header to all lines if changed. Once the "Sales tax group" on the header is changed - a dialog pops out and asks the parameter "Update sales tax group" to be set to yes. Once you click OK, "Sales tax group" gets copied from header to all of the lines. If this parameter is disabled, "Sales tax group" gets updated only on the invoice header.

![](@site/static/img/media/image97.png)

### Manage and approve invoices (document form)

This is the next step, parallel to the ExFlow approval portal, after the invoice is posted (either manually or automatically) via the Import form. The posted invoice is accessible from the approval form as well the form named "Document form All".

The Document form is intended to be used by Accounts payable personnel to obtain an overview of invoices, check the approval status, or modify an invoice.

Approvers in the organization use the web portal to view, edit and approve assigned invoices. When an invoice requires different approvers for different lines, each line will be assigned to the different approver routes which are handled in parallel.

In the Document form, the user can push the button 'Cross company' to be able to show invoices from all companies running ExFlow.

| Document forms        |
|:-|:-|
| Document form All     | Shows both Cost invoices and Purchase order invoices. |
| Document form Expense | Shows only Cost invoices.                             |
| Document form Purch   | Shows only Purchase order invoices.                   |

