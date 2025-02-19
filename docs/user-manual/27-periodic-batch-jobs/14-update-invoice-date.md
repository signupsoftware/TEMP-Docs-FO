---
title: Update invoice date
sidebar_position: 14
hide_title: true
custom_edit_url: null
---
## Update invoice date 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow \| Periodic tasks \| Miscellaneous \| Maintenance \| Update invoice date

This job is triggered to update the posting date of the invoices residing in the import form of which posting date is pointing to a closed financial period. The posting date for those invoices will be updated to the first day of the next open financial period when job is run.

