---
title: Auto get purchase order lines in Import form
sidebar_position: 9
hide_title: true
---
## Auto get purchase order lines in Import form <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

ExFlow \| Periodic tasks \| Miscellaneous \| Auto get purchase order lines in Import form

Auto get purchase order lines in the Import form is a functionality used to retrieve purchase order lines for all invoices in Import form that have no purchase line attached.

![Graphical user interface Description automatically generated](@site/static/img/media/image130.png)

| Parameters                   |
|:-|:-|
| Use purchase order reference | Fetch purchase order lines based on the existing purchase order reference in Import form. |
| Records to include           |
| Filter                       | Filter out the records based on the query.                                                |

Note, that there is an ExFlow parameter that enables the same functionality to run upon importing the invoice. To activate this, "Auto get purchase order lines" has to be enabled in *ExFlow -\> Setup -\> Parameters -\> Purchase order -\> Get purchase order lines.*

