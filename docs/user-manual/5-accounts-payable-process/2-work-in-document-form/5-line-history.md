---
title: Line History
sidebar_position: 5
hide_title: true
---
## Line History <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

On the line tab, click the Line history button to see information for the marked line. This view will display only actions for one row to be able to follow the changes more easily.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image101.png)

| Fields        |
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
| Action level  | If the information is coming from the Invoice header or Invoice line.                                                                                            |
