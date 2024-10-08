---
title: Common Issues
sidebar_position: 1
hide_title: true
---
## Common issues - Import form <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

Q: **Vendor is not found**
- Check Identification rules (validation message) to find out what data is missing.
- Add manually OR delete the invoice and import again.

Q: **Wrong due date**
- Change manually.

Q: **Duplicate invoice**
- Delete the invoice if already processed.
- Change invoice number by adding -1 as suffix if invoice is not processed.

Q: **Approvers not found**
- Add approvers manually.
- Contact TBD to change approval workflow.

Q :**Approvers not found error**
- Check if approver is an ExFlow user, Check if user is connected to a person (System adm), Check security role (system adm), Check worker.

Q: **Error on post**
- At least two approver is needed on an invoice line – add approver.
- The header is not in balance with the lines – make sure that the lines sums up.

_________________________________________________
### Common issues - Document form

Q: **Invoices  are not found in Document form**
- Set filter to include invoices with missing approvers.

Q: **Approvers is missing or wrong status**
- Restart the approval flow.
- Add approvers manually or suggest approvers.

Q: **Invoice status is not Approved**
- All lines needs to be approved.

Q: **Cannot cancel an invoice**
Make sure that at least one invoice line has the status “Rejected”.

_________________________________________________
### Common issues - ExFlow web

Q: **Approver is signed out directly when logging in**
- Approver is not setup as an ExFlow user - add in ExFlow user setup.
- Approver is not connected to ExFlow web user role – change in Std D365 user setup.

Q: **Error message on Reject**
- A comment is needed (minimum two words).

Q: **Error message on Approve**
- Account structure validation issue – check rules in Std D365.
- Dimension ranges issue – check rules in ExFlow.

Q: **Cannot change coding**
- Approver is not a Power user – change in ExFlow user setup.
- Configuration in ExFlow is wrong – check with system administrator.
