---
title: Accrual of estimated costs
sidebar_position: 5
hide_title: true
custom_edit_url: null
---
## Accrual of estimated costs of all document line types 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow \| Periodic tasks \| Post \| Accrual \| Create journal for accrual of estimated costs of all document line types

The purpose of the Create journal for accrual of estimated costs functionality is to provide a practical, user friendly and risk-free way to recognize a cost that is linked to an ExFlow invoice that is open (not finally posted) at a certain time, normally at period closing.<br/>
The purpose is not to achieve automation but to improve efficiency in period closing routines.<br/>

:::info Stocked Items, Line types of Fixed asset, Customer, Freight bill and Landed cost are not supported
:::

![small](@site/static/img/media/image124.png)
______________________________________

#### Prerequisites
Standard D365FO daily journals must be created.

#### Limitations
Stocked Items, Line types of Fixed asset, Customer, Freight bill and Landed cost are not supported.<br/>



#### Process

1. Navigate to Periodic tasks \| Post \| Accrual \| Create journal for accrual of estimated costs of all document line types. 
2. Open the periodic job and select the invoice line transactions in ExFlow to be included in the accrual journal. 

| Group | Field | Description |
| ---- | ---- | ---- |
|Dates | Registration date, from | Date of oldest invoice to be included in the interval. Date refers to the date of the posting date of the Invoice register journal.<br/>*Recommendation:leave blank.*
|  |Registration date, to| Date of latest invoice to be included in the interval. Date refers to the date of the posting date of the Invoice register journal. |
| | Accrual date|Suggested posting date for the accrual journal that will be created.|
| | Reversal date|Suggested reversal date for the accrual journal that will be created.|
|Ledger |Include Ledger|If selected, invoice lines of line type "Ledger" will be included in the creation of accrual journal|
| | Include intercompany transactions| If selected, invoice lines of line type "Ledger" with another offset company and accounts, will be included in the creation of accrual journal.<br/>*When selected, the intercompany attributes – offset company and account details – will be carried across to the accrual journal. Any ”cleaning activity” must be performed in the journal.* |
| |Include accrual id| If selected, invoice lines of line type "Ledger" with a selected "accrual id" will be accrued - selected accrual id and start date will be set in the accrual journal.<br/>*When selected, the accrual attributes – accrual id. and start date – will be carried across to the accrual journal. Any ”cleaning activity” must be performed in the journal.*|
|Project |Include Project | If selected, invoice lines of line type "Project" will be accrued. |
| |Include intercompany transactions| N/A.<br/>*Accrual of intercompany project transactions is not supported.* |
| | Accrue on project | If selected, costs on projects will be accrued to the sub module "Project".<br/>*Can only be selected if Include Project is enabled.* | 
| Item | Include Item | If selected, invoice lines of line type "Item" or "Procurement category", referencing a purchase order line will be possible to select for accrual, see below.<br/>**Stocked items are not supported** |
|| Include Item, non-stocked|If selected, invoice lines of line type "Item", referencing a purchase order line where the item's Inventory policy does not have the parameter Stocked product enabled, will be accrued.<br/>*Select this if service-based items should be accrued.*<br/>**Stocked items are not supported** |
||Include Procurement category | If selected, invoice lines referencing a "purchase order line with only a Procurement category code" selected, will be accrued.<br/>*Select this if category based services should be accrued.*
||Include Project|If selected, invoice lines referencing a purchase order line with a connected Project ID will be accrued.|
||Accrue on project| If selected, invoice lines referencing a purchase order line with a connected Project ID will be accrued to the sub module Project.<br/>*Can only be selected if Include Project is enabled*|
||Include Asset| N/A.<br/>*Accrual of asset transactions is not supported*.|
|Charge|Include Charge| If selected, invoice lines of line type "Charge", where the charge code in Debit has Type set to Ledger account will be accrued.|
|Procurement|Include procurement|If selected, invoice lines of line type "Procurement" will be possible to select for accrual.|
|Journal|Journal| Daily journal to use for the accrual posting. Cabn be defaulted from ExFlow parameters.<br/>*Note! ExFlow does not check if a selected journal is setup with amounts including or excluding tax.*|
||Offset account|Offset coding on each line in the created accrual journal. Can be defaulted from ExFlow parameters.|
||Use line description|If selected, any line description available on ExFlow documents lines will be carried across to the accrual journal. If not selected a standard line description will be used (“Accruals ExFlow Line type costs” + Voucher No + Vendor name).|
|Sales Tax| Include sales tax group|If selected, any sales tax group selected on ExFlow document lines will be carried across to the accrual journal.<br/>*Note! Only to be used if sales tax is recognized at time of Invoice approval and the daily journal is set to "include sales tax".*|
||Include item sales tax group|If selected, any item sales tax group selected on ExFlow document lines will be carried across to the accrual journal.<br/>*Note! Only to be used if sales tax is recognized at time of Invoice approval and the daily journal is set to "include sales tax".*|
|Currency|Currency exchange rate|If Posting date is selected, the currency exchange rate in the accrual journal is based on the posting date of the accrual journal. If Invoice register is selected, the currency exchange rate in the accrual journal is based on the date for each lines invoice register posting.|
||Use invoice currency|If selected, the invoice currency will be used in the accrual journal. If not selected, the company currency will used in the accrual journal.|


2. Select `OK`. The accrual journal is created.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image399.png)

3. To find the created accrual journal Navigate to General ledger -> Journal entries -> General journal.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image400.png)

4.	Analyze the lines and if necessary, change coding, delete lines, add lines etc. before posting. The journal can also be deleted and after changing selection criteria, the process can be run again.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image401.png)

#### Considerations

- Decide what transactions should be accrued.
- The data that is transferred to the accrual journal is a snapshot of open ExFlow invoice lines. Consider a correct time during period closing when to run the accruals. 
- The data that is transferred to the accrual journal is a snapshot of open ExFlow invoices lines. Based on the customers process, they could have wrong coding, no coding or are only partly coded. Therefore, analyze lines in the accrual journal in detail before posting the accruals.
- Be careful with accruing invoice lines with accruals (from accrual schemas) and sales tax since accruals of these types of transactions will create extra transactions that need to be handled and reconciled separately.
- If accruals should be approved by different users in the organization before posting, set up journal approval and run the periodic job with different selection criteria and i.e., one job per journal.



   











                      