---
title: ExFlow vendor invoice management   
sidebar_position: 1
hide_title: true
custom_edit_url: null
---
## ExFlow vendor invoice management 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow \| Workspaces \| ExFlow vendor invoice management

ExFlow for D365 FO is delivered with a workspace named "ExFlow vendor invoice management", used for accounts payable members or other personnel working with finance. The workspace has two different pages, one displaying tiles with cross company functionality and the other displaying an analytical workspace with several tabs showing invoice and approval data.

### Workspace

The tiles are clickable and will open the result based on the filter set on the tile.

![Timeline, Teams Description automatically generated](@site/static/img/media/image114.png)

| Workspace    |
|:-|:-|
| Workspace          | Display's tiles showing number of invoices in different statuses.        |
| Analytics          | Display's invoice and approval information in embedded Power BI reports. |
| Company            | Filter the tiles for a specific company.                                 |
| Show cross company | Display cross company information in the tiles.                          |


|Tiles| |
|:-|:-|
|Invoices ready for import|Number of invoices ready for import in ExFlow.|
|Open imported invoices|Number of invoices to process in ExFlow import form.|
|Open imported invoices assigned to no one.|Number of invoices to process in ExFlow import form that is not assigned to a clerk to handle.|
|Open imported invoices without approvers|Number of invoices to process in ExFlow import form that has not yet any approvers set on the invoice lines.|
|Open imported invoices with missing vendors|Number of invoices to process in ExFlow import form that are missing vendor information.|
|Open imported invoices assigned to me|Number of invoices to process in ExFlow import form assigned to current user.|
|Open imported invoices older than 5 days|Number of invoices to process in ExFlow import form that is older than 5 days.|
|Open imported invoices with missing documents|Number of invoices to process in ExFlow import form that is missing and invoice image.|
|Open imported invoices with missing coding|Number of invoices to process in ExFlow import form that has not been coded.|
|Open document invoice with price variances|Number of purchase order invoices in ExFlow document form with matching status price variance.|
|Open document invoice with status rejected|Number of invoices in ExFlow document form with the status rejected.|
|Open document invoice with past due date|Number of invoices in ExFlow document form that has past the due date.|
|Open document invoice due within 10 days|Number of invoices in ExFlow document form with due dates within 10 days.|
|Open document invoice at current approver more than 7 days|Number of invoices in ExFlow document form that has been out for approval more than 7 days.|
|Open document cost invoices without coding|Number of cost invoices in ExFlow document form that has no coding.|
|Open document invoices with hold status|Number of invoices in ExFlow document form that has status hold.|
|Open document invoices due within 5 days|Number of invoices in ExFlow document form with due dates within 5 days.|
|Open document invoice older than 15 days.|Number of invoices in ExFlow document form older than 15 days.|
|Open document invoice with quantity variance|Number of purchase invoices in ExFlow document form with matching status quantity variance.|
|Approved purchase order invoices|Number of invoices in ExFlow document form with status approved.|
|Approved cost invoices|Number of invoices in ExFlow document form with status approved.|
|Number of open invoice approval journals|Displays number of open approval journals in D365 FO, please not this tile is not cross company.|
|Post control invoices|The tile is clickable and will show the result based on the filter set on the tile which is Post control invoices.<br/>The number on the tile shows the number of invoices in Post controlClicking on the tile will navigate to the post control form.The form works the same as post control form which is under ExFlow &gt; Invoices &gt; Post control|
|Open|Displays the open invoices for the current company.|
|Cost|Displays the open invoices for the current company filtered on cost invoices.|
|Purch|Displays the open invoices for the current company filtered on purchase invoices.|