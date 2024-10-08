---
title: Process
sidebar_position: 1
hide_title: true
---
## Agreement process <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

ExFlow \| Setup \| References \| Agreements

Agreements can be used if a company would like to automatically approve cost (non-PO) invoices based on certain criteria and more advanced agreements with optional features of having lines on the agreement or needs to be configured based on invoice recurrence or invoice frequency. If a company has a lease agreement and receives a monthly invoice, it can be automatically approved in the same way a purchase order invoice can be automatically approved. There is also possible to copy existing agreements, extend the original agreements length and use "self-billing invoice" functionality, for more information regarding this functionality contact Signup Software AB.

When a new agreement is added, it is mandatory to fill in vendor account, start date, end date, maximum invoice amount and total invoice amount. Reference and agreement fields are optional criteria, however if they are used, the imported invoice data must match the values in the fields for an automatic approval to take place, if the amounts are within the allowed ranges.

If the criteria match between an invoice and an agreement, the amount of the invoice will be compared first against the "Max invoice amount" and if the invoice amount is equal or less than, the system will check that the "System approved amount" including the new invoice amount is less than the "Total invoice amount". If the invoice is valid and the amounts are within the allowed limits, the invoice will be automatically approved by the system. When matching invoice amount with the maximum amount on the agreement, currency specified in the agreement instead of the accounting currency set in the ledger will be used. If the invoice amount is not valid in comparison to the agreement's criteria, the invoice will be sent out for manual approval.

If an invoice is not matched against the agreement during the import, user can adjust values that caused a mismatch and rerun the matching logic again through import form, in the action pane tab "General" using the button "Invoice matching" or use "pre-accounting" in the action pane tab "Manage."

![Graphical user interface Description automatically generated](@site/static/img/media/image34.png)

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image35.png)

If an invoice is not matched against the agreement either during the import or in the Import form All, the user can adjust values from document form that caused a mismatch and rerun the matching logic again from action pane tab "General" and selecting "invoice matching".

![Graphical user interface, text, application, website Description automatically generated](@site/static/img/media/image36.png)