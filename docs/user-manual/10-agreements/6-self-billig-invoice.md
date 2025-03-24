---
title: Self-Billing invoice
sidebar_position: 6
hide_title: true
custom_edit_url: null
---
## Self-Billing invoice <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow agreement also supports self-billing invoices, meaning that you can issue an invoice through the agreement form based on the defined criteria. It is a requirement to add one attachment (of a defined type either on header or line level) to the agreement itself. Make sure you use the same file type you have defined for self-billing in ExFlow parameters (ExFlow Setup - Parameters -- Tab Approval - Agreements - Self billing invoice document type).

This attachment is to be used as the invoice image (Usually it is the contract itself) once the invoice is issued.  

To create a self-billing invoice, you need to select the agreement (Header or line) and then select Maintain -\> Create self-billing invoice and the invoice will be initially created in the import history with the information copied from agreement. Another way to create self-billing invoices is to set up "Auto generate self-billing invoices" batch job.

It is possible to generate invoices with sales tax detail if the agreement has this information defined on it.

### Auto Generate Self-Billing invoices

ExFlow \| Periodic Tasks \| Maintenance \| Auto Generate Self-Billing invoices

This feature is used to create self-billing invoices. It can set up to run as a batch job. After running this functionality, the invoice is ready to be imported to the ExFlow Import form. One and only one document can be attached to the agreement to generate a self-billing invoice, either to a line or to the header.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image42.png)


|Parameters| |
|:-|:-|
|Include agreement lines|**No** - only agreements with header and no lines information will be considered. The SBI will be created with agreement header information (amount, currency, dates, recurrence, tax info, attachment).<br/>**Yes** - both agreements with and without lines information will be considered. For agreement with lines, the SBI will be created with header information, but the invoice amount, invoice date and attachment will be picked from the agreement lines. If the attachment is missing on agreement lines it is picked from the header. The line that will be used to create SBI is chosen if the line invoice date is in between the start and end date on the agreement and outside the periodicity setting on the agreement and not equal to last generated date.|
|Filter|Filter out the records based on the query.|


### Setting static due date and payment ID for self-billing invoices

This function allows users to set static due date and payment id for self-billing invoices for ExFlow agreements after payment day criteria was set up. (D365 - Accounts payable - Payment setup - Payment days).

#### Agreements with lines

When creating an agreement additional option for Terms of Payment and Payment ID will be present.

- When setting the agreement with Payment ID it will be copied from the agreement line. If no Payment ID is found and parameter in ExFlow -> Setup -> Parameters -> Import tab parameter "Get payment id from vendor if empty" is set to Yes, then Payment ID will be copied from the vendor card.
- When setting the agreement with Terms of payment due date is calculated based on agreement line terms of payment. If agreement line has no Terms of payment and in ExFlow -> Setup -> parameters -> Import tab parameter "If blank, calculate due date from vendor" is set to Yes, then due date will be calculated the same way as described in Agreement with no lines (see further) but the invoice date will be the agreement line invoice date.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image43.png)

After setting the agreement with Terms of Payment and Payment ID and creating a self-billing invoice user will be able to track Invoice date, payment date and Payment ID on the invoice.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image44.png)

#### Agreements without lines
When agreement has no lines and there is no setup for Terms of payment and Payment ID:

- If in ExFlow -> Setup -> Parameters -> Import tab parameter "Get payment id from vendor if empty" is set to Yes, then Payment ID will be copied from the vendor card and Invoice date will be today's date.
- If in ExFlow -> Setup -> parameters -> Import tab parameter "If blank, calculate due date from vendor" is set to Yes, then due date is calculated from Terms of payment on the vendor card. Payment day will be considered in due date calculation. If no Payment day is filled, due date will be calculated only based on the days.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image558.png)

![Graphical user interface, application Description automatically generated](@site/static/img/media/image559.png)

- If the vendor has empty Terms of payment, then due date will be calculated based Terms of payment in Accounts payable -> Setup -> Accounts payable parameters -> Ledger and sales tax.
- If no terms of payment is found from the vendor or AP parameters, then due date will be calculated from invoice date + 30 days.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image560.png)

:::info Posting date adjustment - When running Self billing invoices, "Always actual date and Actual date" is not recommended. Due to agreements matching issues.<br/> ![Graphical user interface, application Description automatically generated](@site/static/img/media/image681.png)
:::