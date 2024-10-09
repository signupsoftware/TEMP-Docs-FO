---
title: Invoice History
sidebar_position: 4
hide_title: true
custom_edit_url: null
---
## Invoice History <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

Open an invoice in edit mode from ExFlow document form. In the header menu exit "General" press the button "Invoice history". A new form will open with a summary of actions based on invoice header and invoice lines.

![](@site/static/img/media/image100.png)

| Fields        | |
|:-|:-|
| Voucher       | Displays the voucher number.                                                                                                                                     |
| Invoice       | Displays the invoice number.                                                                                                                                     |
| Event origin  | From where the change has been done.                                                                                                                             |
| User ID       | The user that has done the change.                                                                                                                               |
| Name          | Username                                                                                                                                                         |
| Comment       | Displays the admin comment from the invoice.                                                                                                                     |
| Approvers     | Displays the approval chain.                                                                                                                                     |
| Status        | Displays which status the invoice header has.                                                                                                                    |
| Action        | An info message stating what action has been done on the invoice for example "The flow is restarted" or the invoice is coded with line type ledger 6210-ADM-STH. |
| Log date time | When the event occurred.                                                                                                                                         |
| Line number   | What line the event occurred on.                                                                                                                                 |
| Order         | Displays the approver order line the event displays for example approver 1 is always order 10 000.                                                               |
| Action level  | If the information is coming from the Invoice header or Invoice line.                                                         