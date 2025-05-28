---
title: Archive invoice in import form
sidebar_position: 4
hide_title: true
---
## Archive invoices
<button class="pdf-button btn_higher" onClick={() => { print(); }}>Save as PDF</button>

**NOTE: This function is built to support CTC messages for reject in e-invoice flow**

### Purpose
Functionality Overview: Archive functionality that allows users to archive invoices in the import form instead of deleting them. This functionality helps keep a history of invoices, including the invoice image, data, payment ID, voucher number, amount, and a rejection code. The archived invoices will be stored in a separate table.

### Setup
- Navigate to ExFLow AP - Setup - Parameters - General 
    - Enable the Archive functionality

![medium](@site/static/img/media/image687.png)

- Navigate to ExFLow AP - Setup - Resources - Classifications - Reason code for reject
    -  Setup reason codes for rejection: Are necessary for archiving invoices. These codes can be customized for different companies. 

![medium](@site/static/img/media/image688.png)

![medium](@site/static/img/media/image689.png)

### Process
**Reject and Archive Button in Import form:**  The new "reject and archive" button in the import form can be seen when archive functionality is enabled. This button allows users to archive invoices directly from the import form, provided they are the invoice owner.

![medium](@site/static/img/media/image690.png)

The rejection code and free text must be provided when archiving an invoice. This requirement ensures that there is a clear and documented reason for each archived invoice.

![medium](@site/static/img/media/image691.png)

**Archived form:** Once an invoice will be archived, we can find archived invoice in archived form. 
- Navigate to Exflow AP - Inquiries and reports – Import form - archived

![medium](@site/static/img/media/image692.png)

![Large](@site/static/img/media/image693.png)