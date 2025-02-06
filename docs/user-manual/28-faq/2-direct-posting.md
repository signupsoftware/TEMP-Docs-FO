---
title: Direct posting process QA
sidebar_position: 2
hide_title: true
custom_edit_url: null
---
## QA - Direct posting process
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

**When is the liability to the vendor recognized in the financial books?**
-	Direct posting: At invoice journal posting.
-	Invoice reg/approval: At Invoice register posting (Import form).<br/>

**When is VAT posted in the financial books?**
-	Direct posting: At invoice journal posting.
-	Invoice reg/approval: Depends on the setup in Accounts payable (Time of sales tax posting).<br/>

**Can you register VAT in ExFlow import form without a tax transaction being registered?**
-	Direct posting: Yes.
-	Invoice reg/approval: Yes, if time of sales tax posting is set to “Invoice approval”.<br/>

**Which std D365FO journals/forms are ExFlow using for handling of vendor invoices?**
-	Direct posting: Invoice journal (non-PO), Pending vendor invoice (PO).
-	Invoice reg/approval: Invoice register journal (non-PO, PO), Approval journal (non-PO, PO (indirect to Pending vendor invoice)).<br/>

**Can you use Preliminary VAT (method to avoid tax transactions being reported to authorities before final posting)?**
-	Direct posting: Not applicable.
-	Invoice reg/approval: Yes.<br/>

**Can you use Direct posting in one legal entity and Invoice reg/approval in another legal entity?**
-	Yes, but please be aware that the posting effects will be different between the legal entities and probably new reports/queries are needed to be able to follow up the vendor balance and sales tax balance on group level.<br/>

**Can you reserve costs from ExFlow open invoices at period closing?**
-	Direct posting: Yes, use the Ledger accrual of estimated costs functionality.
-	Invoice reg/approval: Yes, use the Ledger accrual of estimated costs functionality.<br/>

**Is cancellation of invoices in ExFlow affecting the GL and Vendor balance?**
-	Direct posting: No.
-	Invoice reg/approval: Yes.
