---
title: Italy for invoice register process
sidebar_position: 5   
hide_title: true
custom_edit_url: null
---
## Italy <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

### Description
In Italy you need to assign invoices to different tax books depending on different criteria for the invoice. This is done through the number sequence groups that are assigned to different journals i.e. it is required to have multiple journals for each type of posting to ensure that the VAT is registered in the correct tax books.<br/>
Each invoice needs to be manually handled to decide which number sequence it should be posted to.<br/>
ExFlow has a localization that gives you the possibility to choose the journal required for each specific invoice through a pre-import form.

### Setup in D365FO
Tax books needs to be setup according to Italian requirements in D365FO which needs to connect to number sequence groups. The number sequence groups also needs to be created according to Italian requirements.<br/>
**For the number sequence groups, multiple corresponding invoice register and invoice approval journals needs to be created.**

### Setup ExFlow
ExFlow | Setup | Parameters | tab; Import | section; Pre-import |

Set the parameter **Assign journal number before import** to `Yes`. The Pre-Import menu will be activated.<br/> 

![medium](@site/static/img/media/image598.png)

### Process to use pre-import form
- Run batch job to import invoices from EDC or other OCR tools. (this would normally put the invoices in Import history).<br/>

![medium](@site/static/img/media/image599.png)

- The invoice is then available in both Import history and the Pre-import form.<br/>
- In the Pre-import form you select the correct journal by marking the invoice and click **Set journal name for selected invoices**.<br/>
- Select **Mark selected invoices to be ready for import**.<br/>

![medium](@site/static/img/media/image600.png)

- Run the job **Import OCR invoices to Import form**. The job can be executed from Pre import form or as a batch job.<br/>

![medium](@site/static/img/media/image601.png)


### Differences between the process for cost invoices and invoices connected to a purchase order.

#### Cost invoices
1.	In Pre-import pick the correct journal for the invoice (which provides you the correct number sequence).<br/>
2.	At final posting you need to create an invoice approval journal connected to the same number sequence that the journal used at the time of invoice register (Import form).<br/>
3.	In the function “Find vouchers” you then pick the vouchers that are have the voucher serie connected to the connected invoice journal.<br/>

#### Purchase order invoices
1.	In the pre import form you can pick any journal since the number sequence connected to the purchase order will be the one used at the final posting.<br/>
2.	After approval post the invoice through the document form manually.<br/>

### Limitations
**It is not possible to reprocess invoices from Import history** when using the Italian localization, if an invoice needs to be entered into the system again, the invoice needs to be entered through the OCR solution again.
It is not possible to make the final posting in batches, it has to be a manual process.
