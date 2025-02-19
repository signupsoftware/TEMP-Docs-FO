---
title: Import History
sidebar_position: 1
hide_title: true
custom_edit_url: null
---
## Invoice History <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow \| Inquiries and reports \| Import history

The ExFlow Import history displays all imported invoices even before they are imported to the ExFlow Import form. This form is not used in the daily business process, however if the client would like to see the original XML file or import an invoice again, this form can be used. When an invoice is imported to the ExFlow Import form, the check box 'Processed' is ticked. If an invoice needs to be imported again the 'Processed' checkbox will be unticked, and the next time the scanned invoices import is run the invoice will appear again in the ExFlow Import form.

If a manual invoice only containing a PDF image without any interpreted data needs to be imported, it can be done from this form.

Pushing the button 'Create invoice' in the header menu and it is possible to attach a PDF file via the standard process to each line. When the Import/Scanned Invoices is run, the invoice will appear in the ExFlow Import form. The clerk handling the invoices will need to manually choose a Vendor, add the invoice number, and set amounts etc.

- Displays all imported invoices even before they are imported to the ExFlow Import form.
- Not used in the daily business process but allows you to see the original XML file or import an invoice again.
- Create invoices manually
- Reprocess test invoices


![Graphical user interface, application Description automatically generated](@site/static/img/media/image116.png)

| Buttons (Action pane) | |
|:-|:-|
| Save                  | Save the changes made on this form.                                                               |
| Edit                  | Open the form in Edit-mode.                                                                       |
| Create invoice        | Creates a blank invoice row and a manual PDF file which can be saved as an attachment.            |
| Show XML              | Displays the imported XML file (if used).                                                         |
| Show Invoice          | Displays the connected PDF invoice.                                                               |
| Buttons (Upper pane)  |
| Show unprocessed      | Switch to 'Yes' if already imported invoices to ExFlow Import form should be visible in the grid. |
| Show all companies    | Switch to 'Yes' if invoices from all companies should be visible in the grid.                     |


|**Fields (Upper pane)**| |
|:-|:-|
|Batch number|Batch number|
|Credit|0= invoice, Blank=Credit note|
|Payment ID|Payment id interpreted on invoice|
|Payment account|Pay-to-account if interpreted on invoice|
|Project ID|Project id if interpreted on invoice|
|Processed|Unticked=Not imported to Import form<br/>Ticked=Not yet imported to Import form|
|Company ID|Which entity the invoice belongs to|
|Vendor account number|Vendor account number|
|Vendor account number 1|Vendor information interpreted in order to identify vendor|
|Vendor account number 2|Vendor information interpreted in order to identify vendor|
|Vendor account number 3|Vendor information interpreted in order to identify vendor|
|Vendor account number 4|Vendor information interpreted in order to identify vendor|
|Vendor account number 5|Vendor information interpreted in order to identify vendor|
|Invoice number|Vendor invoice number|
|Image name|Name of invoice image|
|Amount incl VAT|Interpreted amount incl VAT|
|VAT amount|Interpreted VAT amount|
|Currency code|Interpreted currency code|
|Due date|Interpreted Due date|
|Posting date|Posting date|
|Reference|Interpreted reference|
|Scanning date|Date of scanning|
|Scanning time|Time of scanning|
|Message||
|Message ID||
|Purchase order|Interpreted PO number on invoice header|
|Charge 1 from invoice|Interpreted charge from invoice according to setup|
|Charge 2 from invoice|Interpreted charge from invoice according to setup|
|Charge 3 from invoice|Interpreted charge from invoice according to setup|
|Charge 4 from invoice|Interpreted charge from invoice according to setup|
|Charge 5 from invoice|Interpreted charge from invoice according to setup|
|Created date and time|Date of creation|
|Import source|If invoice has been imported through API, SFTP or others|
|Agreement number|Agreement number|
|Misc field 7|Interpreted value if Misc field is being used|
|Misc field 8|Interpreted value if Misc field is being used|
|Misc field 9|Interpreted value if Misc field is being used|
|Misc field 10|Interpreted value if Misc field is being used|
|Vendor code|Vendor code, if interpreted on invoice|
|External vendor id|External vendor id number, if used. Together with above Vendor code|
|Import method|Import method used|
|Date of VAT register|If applicable, the date to be used for VAT register|
|Sales tax group|Item sales tax group that is coming from the invoice.|
|Item sales tax group|Item sales tax group that is coming from the invoice.|
|UUID|Specific for Mexico – please see white paper on Mexico localization|
|Series|Specific for Mexico – please see white paper on Mexico localization|
|Type of operation|Specific for Mexico – please see white paper on Mexico localization|


| Fields (Lower pane)  | |
|:-|:-|
| Purchase order       | Purchase order number interpreted on the line |
| Project number row   | Project number interpreted                    |
| Item number          | Item number interpreted                       |
| Description          | Description for item number if interpreted    |
| Quantity             | Interpreted quantity                          |
| Unit                 | Interpreted unit of measure                   |
| Purchase price       | Interpret unit price                          |
| Line discount        | Interpreted line discount                     |
| Line discount amount | Interpreted line discount amount              |
| Line amount          | Interpreted total line amount                 |
| Reference ID         | Interpreted reference ID                      |
| Misc field 1         | Interpreted value for Misc field, if set up   |
| Misc field 2         | Interpreted value for Misc field, if set up   |
| Misc field 3         | Interpreted value for Misc field, if set up   |
| Misc field 4         | Interpreted value for Misc field, if set up   |
| Misc field 5         | Interpreted value for Misc field, if set up   |
| Misc field 6         | Interpreted value for Misc field, if set up   |
| Misc field 7         | Interpreted value for Misc field, if set up   |
| Misc field 8         | Interpreted value for Misc field, if set up   |
| Misc field 9         | Interpreted value for Misc field, if set up   |
| Misc field 10        | Interpreted value for Misc field, if set up   |
| Reference            | Interpreted reference                         |
| Voyage               | Landed cost - for line type procurement      |