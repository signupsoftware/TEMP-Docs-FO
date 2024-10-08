---
title: Analytics Reports
sidebar_position: 3
hide_title: true
---
## Invoice process overview <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

First page gives a general overview of the companies vendor invoices and the time to process them. Filtering can be made by company by using the filter tab to the right. For filtering on a specific company in the ribbon to the left, mark the item and set a unique company id filter for that specific chart. Some of the charts can be filtered by company id using the general filter “Filters on all pages”. 

![Graphical user interface, chart, application Description automatically generated](@site/static/img/media/image246.png)

| Graph | Information | Filter |
| ---- | ---- | ---- |
| Invoices ready to import | Display number of invoices ready to import in ExFlow import history. Shared table, not company specific. | ExFlowMeasure_Company,ExFlowMeasure_ImportHistoryInvoices, Rec.id; All.|
| Total open invoices in import form | Total number of invoices in ExFlow import form to handle. |ExFlowMeasure_OpenImportedInvoices Dataareaid; All, Rec.id; All, ExFlowMeasure_Company.|
| Open cost invoices in import form | Total number of cost invoices in import form to handle. | ExFlowMeasure_OpenImportedCostInvoices Dataareaid; All, Rec.id; All, ExFlowMeasure_Company.|
| Open purchase invoices in import form | Total number of invoices connected to a purchase order in import form to handle. | ExFlowMeasure_OpenImportedPurchaseInvoices, Dataareaid; All, Rec.id; All, ExFlowMeasure_Company.|
| Avg invoice time (days) in import form (last 12 months) | Average of how many days invoices remains in ExFlow import form before they are processed, and invoice registered. Showing last 12 months. | ExFlowMeasure_PostedImportedInvoices, Daysuntilposted, Createddate, Dataareaid, ExFlowMeasure_Company.|
| Avg invoice time (days) from import to approval (last 12 months) | Average of how many days invoices remains in ExFlow import form until they are finally approved. Showing last 12 months. | ExFlowMeasure_ApprovedDocumentInvoices, Approvaldate, Numberofdaysuntilposted, Dataareaid, Createddate,ExFlowMeasure_Company.|
| Processed invoices from import form (last 30 days) | Number of invoices that has been handled in ExFlow import form the last 30 days. | ExFlowMeasure_PostedImportedInvoices, Createddate, Dataareaid; All, RecId; All, ExFlowMeasure_Company. |
| No of invoices last 12 months | Number of invoices that has been invoice registered the last 12 months. |ExFlowMeasure_PostedImportedInvoices, Createddate, CreatedMonth, CreatedYear,  Dataareaid, ExFlowMeasure_Company.|
| Invoice amount last 12 months | The total amount in MST that has been invoice registered the last 12 months. | ExFlowMeasure_ PostedImportedInvoices, AmountMst; All, Created date; Last year, Created Month; All, Created Year; All, ExFlowMeasure_PostedImportedInvoices, Dataareaid; All,ExFlowMeasure_Company.|
| No of invoices by year | Number of invoices per year the last three (3) years based on invoices imported to ExFlow Import form. | ExFlowMeasure_PostedImportedInvoices, Createddate; Last 3 years, Dataareaid; All, Invoicesperyear; All, RecId; All,ExFlowMeasure_Company.|
| No of invoices by vendor and year | Number of invoices divided by vendor and year; three (3) years back based on invoices imported to ExFlow import form. | ExFlowMeasure_PostedImportedInvoices Createddate; Last 3 years, Dataareaid; All, Invoicesperyear; All, RecId; All, ExFlowMeasure_Company.|

### Cost invoice overview
The second page gives an overview of the cost invoices and the time to process them and also agreement matching information. Filtering can be made by company using the filter tab to the right. For filtering on a specific company in the ribbon to the left, mark the item and set a unique company id filter for that specific chart. 

![Graphical user interface, chart, application Description automatically generated](@site/static/img/media/image247.png)


| Graph | Information | Filter |
| ---- | ---- | ---- |
| Active cost invoices | Number of active cost invoices that have been invoice registered and is active in document form.| ExFlowMeasure_DocumentCostInvoices, Dataareaid; All, Rec.id; All. Status; is active. ExFlowMeasure_Company.|
| Total number of invoices matched with agreements (last 12 months) | Number of cost invoices that have been matched with an agreement. (Automatically and manually).|ExFlowMeasure_DocumentCostInvoices Agreementactiontype; Sendoutforapproval or ManualApproval, Createddate; last 12m, Rec.id; All, vendorname; All. ExFlowMeasure_Company.|
| Auto approved invoices matched with agreements (last 12 months) | Number of cost invoices that have been fully matched with an agreement and auto approved. | ExFlowMeasure_DocumentCostInvoices Agreementactiontype; Autoapproval; yes, Createddate; last 12m, vendorname; All. ExFlowMeasure_Company.|
| Auto approved invoices match with agreements (% out of tot. matched) | Number of cost invoices in percent that have been fully matched with an agreement and auto approved.|ExFlowMeasure_DocumentCostInvoices %Autoapproved, Createddate; last 12m. Vendorname; All. ExFlowMeasure_Company.|
| Avg time (days) from import form to approval (last 12 months) | Avg time in days for invoices that has been posted in ExFlow import form to approval last 12 months. | xFlowMeasure_DocumentCostInvoices Numberofdaysuntilapproved Createddate; last 12m. Vendorname; All ExFlowMeasure_Company.|
| Cost invoices with status invoiced | Total number of cost invoices that have been processed in ExFlow.|ExFlowMeasure_DocumentCostInvoices Rec.id;All, Status; Invoiced. Vendorname; All, ExFlowMeasure_Company.|
| No of cost invoices last 24 months | Total number of cost invoices that have been processed in ExFlow last 24 months. | ExFlowMeasure_DocumentCostInvoices, Createddate; last 24m,Createdmonth; All. Createdyear; All, RecId; All, Vendorname; All Vendorname; All ExFlowMeasure_Company.|
| Cost invoices amount last 12 months | Total invoice amount for cost invoices that have been processed in ExFlow last 12 months. | ExFlowMeasure_DocumentCostInvoices Amountmst, Createddate; last 12m, Createdmonth; All. Createdyear; All, Vendorname; All ExFlowMeasure_Company.|
| No of cost invoices per vendor and month | Number of cost invoices per vendor and month last 12 months. |ExFlowMeasure_DocumentCostInvoices, Createddate; last 12m, Recid; All, Createdmonth; All. Vendorname; All ExFlowMeasure_Company.|
| Top 10 vendors by no of invoices | The most frequent top 10 vendors by number of invoices. | ExFlowMeasure_PostedImportedInvoices Recid; All, Vendorname; All ExFlowMeasure_Company.|

### Purchase invoice overview
The third page gives an overview of the invoices matched against purchase orders and the time to process them. Filtering can be made by company by using the filter tab to the right. For filtering on a specific company in the ribbon to the left, mark the item and set a unique company id filter for that specific chart. 

![Graphical user interface, chart, application Description automatically generated](@site/static/img/media/image248.png)

| Graph | Information | Filter |
| ---- | ---- | ---- |
| Active PO invoices | Number of active purchase invoices in ExFlow document form. | ExFlowMeasure_OpenDocumentPurchaseInvoices Recid;All, ExFlowMeasure_Company. |
| Active PO invoices with qty variance | Number of active purchase invoices in ExFlow document form with quantity variance. NOTE: Match result in time of invoice registration |ExFlowMeasure_OpenDocument, PurchaseInvoicesWithQtyVariance Recid; All, Status;Active ExFlowMeasure_Company.|
| Active PO invoices with price variance | Number of active purchase invoices in ExFlow document form with price variance. NOTE: Match result in time of invoice registration | ExFlowMeasure_OpenDocument, PurchaseInvoicesWithPriceVariance Recid; All, Status; Active, ExFlowMeasure_Company.|
| Total approved PO invoices (last 30 days) | Number of total matched and approved purchase order invoices last 30 days. | ExFlowMeasure_ApprovedDocumentPurchaseInvoices, Approvaldate; last 30 days, Recid; All, Status;Active, ExFlowMeasure_Company.|
| Auto approved PO (last 30 days) | Number of matched and auto approved purchase order invoices last 30 days.|ExFlowMeasure_ApprovedDocumentPurchaseInvoices, AutoMatched, Approvaldate; last 30 days, Recid; All, Status; Active, ExFlowMeasure_Company.|
| Mismatched PO invoices (last 30 days) | Number of mismatched purchase order invoices last 30 days. | ExFlowMeasure_ApprovedDocumentPurchaseInvoices HadMatchError, Approvaldate; last 30 days, Recid; All, Status; Active, ExFlowMeasure_Company.|
| Avg time (days) from mismatch to final approval (last 12 months) | The average time for a purchase order invoice that is mismatched until it is finally approved. |ExFlowMeasure_ApprovedDocumentPurchaseInvoices, HadMatchError, Average of NumberOfDaysUntilApproved, ExFlowMeasure_Company.|
| Auto approved invoices last 24 months | Number of matched and auto approved purchase order invoices last 24 months. |ExFlowMeasure_ApprovedDocumentPurchaseInvoices, AutoMatched, Approvaldates; last 24 month, ApprovalYear: All, RecId; All,ExFlowMeasure_Company.| 
| Top 10 best PO match by vendor | Top 10 vendors that has the best match for purchase order invoices. | ExFlowMeasure_Vendor; Vendorname, ExFlowMeasure_ApprovedDocumentPurchaseInvoices AutoMatched, RecId; All, ExFlowMeasure_Vendor_Fk; top 10by RecId. ExFlowMeasure_Company.|
| No of auto approved PO invoices by vendor | Number of matched and auto approved purchase order invoices divided by vendor last 12 months. | ExFlowMeasure_ApprovedDocumentPurchaseInvoices AutoMatched, ApprovalMonth; last 12 month, RecId; All,ExFlowMeasure_Vendor; Vendorname, ExFlowMeasure_Company.|
| Top 10 worst PO match by vendor | Top 10 vendors that has the worst match for purchase order invoices. | All,ExFlowMeasure_Vendor; Vendorsname, ExFlowMeasure_ApprovedDocumentPurchaseInvoices, HadMatchError; All, ExFlowMeasure_Fk; top 10 by RecId, ExFlowMeasure_Company.| 

### Purchase invoice details
The fourth page gives you percentage of purchase order matching error details. Filtering can be made by company by using the filter tab to the right. For filtering on a specific company in the ribbon to the left, mark the item and set a unique company id filter for that specific chart. 

![Graphical user interface, chart, application Description automatically generated](@site/static/img/media/image249.png)

| Graph | Information | Filter |
| ---- | ---- | ---- |
| % Of PO invoices with qty variance last 24 months | Percent of Purchase order invoices with qty variance last 24 months | ExFlowMeasure_ApprovedDocumentPurchaseInvoicewithqtyvariance, Createdmonth; All, Cretedyear; All % of grandtotal, RecId;All, createddate; last 24 months. ExFlowMeasure_Company; All.|
| % Of PO invoices with qty variance by vendor last 12 months | Percent of Purchase order invoices with qty variance by vendor last 12 months. | % of grand total for ExFlowMeasure_Approved, DocumentPurchaseInvoicewithqtyvariance, RecId; All, % of row total for ExFlowMeasure_Approved, DocumentPurchaseInvoicewithqtyvariance, RecId; All, vendorname; All, createddate; last 12 months. Createdmonth; All, % of column total for ExFlowMeasure_Approved, DocumentPurchaseInvoicewithqtyvariance, RecId; All, ExFlowMeasure_Company; ALL.|
| % Of PO invoices with price variance last 24 months | Percent of Purchase order invoices with price variance last 24 months. | ExFlowMeasure_ApprovedDocumentPurchaseInvoicewithpricevariance, Createdmonth; All, Cretedyear; All, % of grandtotal of ExFlowMeasure_Approved, DocumentPurchaseInvoicewithpricevariance, RecId; All, createddate; last 24 months. ExFlowMeasure_Company;ALL.|
| % Of PO invoices with price variance by vendor last 12 months | Percent of Purchase order invoices with price variance by vendor last 12 months. | % of grand total for ExFlowMeasure_Approved DocumentPurchaseInvoicewithpricevariance, RecId; All, % of row total for ExFlowMeasure_Approved, DocumentPurchaseInvoicewithpricevariance, RecId; All, vendorname; All, createddate; last 12 months. % of column total for ExFlowMeasure_ApprovedDocumentPurchaseInvoicewithpricevariance, Createdmonth; All, RecId; All, ExFlowMeasure_Company; All.|

### Approval Information
The fifth page gives you information about outstanding balances and also invoice approval information in combination with the sixth page with more invoice details. Filtering can be made by company by using the filter tab to the right. For filtering on a specific company in the ribbon to the left, mark the item and set a unique company id filter for that specific chart. 

![Graphical user interface, chart, application Description automatically generated](@site/static/img/media/image250.png)

| Graph | Information | Filter |
| ---- | ---- | ---- |
| Outstanding balance for cost invoices | Outstanding balance of cost invoices in document form. (Remaining amount in MST) |ExFlowMeasure_DocumentCostInvoicesBalance, Amount in MST; All, not cancelled, ExFlowMeasure_Company.|
| Outstanding balance for purchase invoices | Outstanding balance of Purchase order invoices in document form. (Remaining amount in MST) | ExFlowMeasure_DocumentPurchaseInvoices Balance, Amount in MST; All, not cancelled, ExFlowMeasure_Company.| 
| Approved invoices awaiting final posting | Number of invoices in document form with status approved and waiting for final approval. | Count of ExFlowMeasure_ExFlowDocument Invoices, RecId; All, Status; is approved, ExFlowMeasure_Company.|
| Invoices out for approval | Number of invoices in document form with status active and waiting for approval. | Count of ExFlowMeasure_ExFlowDocument Invoices, RecId; All, Status; is active, ExFlowMeasure_Company.|
| Invoices on hold | Number of invoices in document form with status hold and waiting for handling by AP.|ExFlowMeasure_ApprovedDocument Invoices, Flow status; is hold,ExFlowMeasure_DocumentApproveroOnHold, RecId; All,ExFlowMeasure_Company.|
| Total number of approved invoices (last 12 months)| Total number of approved invoices the last 12 months, including today. | ExFlowMeasure_ApprovedDocument Invoices, Approvaldate; Last 12 months, RecId; All, ExFlowMeasure_Company.| 
| Total number of finally posted invoices (last 12 months) | Total number of final posted invoices the last 12 months, including today. | ExFlowMeasure_ApprovedDocument, Invoices,Approvaldate; Last 12 months, Count of ExFlowMeasure_ApprovedDocument Invoices, RecId; All, Status; Invoiced, ExFlowMeasure_Company.|
| Invoices lines approver and status (last 12 months) | Total number of final posted invoices the last 12 months, including today. | ExFlowMeasure_ApprovedDocument, Invoices,Approvaldate; Last 12 months, DataAreaId; All,Flowstatus; All, Name; All, RecId; All, ExFlowMeasure_Company.| 
| Active invoice lines approver (Current & Hold) | Number of active invoice lines per approver, status current and hold. | ExFlowMeasure_ApproverDocument Invoices, DataAreaId; All, Flowstatus; Is Current or Hold, number of invoices, RecId; All,ExFlowMeasure_Company.| 
| Avg Approval days per approver (last 12 months) | Average number of days of approval last 12 months (per approver). |ExFlowMeasure_ApproverDocumentInvoices, ApprovalDate; Last 12 months, approver name; All, Average of DaysUntilApproved; All,Flowstatus; is approved, ApprovalYear; All, ExFlowMeasure_Company.|
| Avg Approval days per month (last 12 months) | Average number of days of approval last 12 months (all approvers per month). |ExFlowMeasure_ApproverDocument, Invoices,ApprovalDate; Last 12 months, Average of DaysUntilApproved; All, ApprovalYear; All, ExFlowMeasure_Company.| 

### Approver invoices
The sixth page gives you the invoice details if you from the previous page, right click and select “Drill trough”. For filtering on a specific company in the ribbon to the left, mark the item and set a unique company id filter for that specific chart.

![Graphical user interface, chart, application Description automatically generated](@site/static/img/media/image251.png)

![Graphical user interface, chart, application Description automatically generated](@site/static/img/media/image252.png)

