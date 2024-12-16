---
title: Automatic invoice coding
sidebar_position: 1
hide_title: true
custom_edit_url: null
---
## Automatic invoice coding 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow \| Setup \| Miscellaneous \| Automatic invoice coding<br/>

Automatic coding of invoices can be switched on from ExFlow general parameters, tab Feature management. This feature is intended to help automatic coding of invoices of type ledger, project, fixed asset or as procurement category in ExFlow Import form at the time of importing new invoices, or while working with the actual invoices in the import form. The function is self-learning meaning the more transactions that are processed with a certain coding, the better the function will be.<br/>

![Graphical user interface, application Description automatically generated](@site/static/img/media/image608.png)<br/>

![Graphical user interface, application Description automatically generated](@site/static/img/media/image88.png)<br/>

*More detailed information is found in the white paper "[Automatic invoice coding](https://support.signupsoftware.com/knowledgebase/article/KA-01149)".*<br/>


|Buttons (Action pane)| |
|:-|:-|
|Edit|Edit the record|
|Computed -<br/>Compute automatic coding|Generate automatic coding through batch|
|Computed -<br/>View automatic coding|View the generated automatic coding|
|Computed -<br/>Automatic coding all lines|Shows all lines that are suggested for automatic coding.|
|Computed -<br/>Automatic coding all approvers|Shows all approvers that are suggested for automatic coding.|
|Posted -<br/>Get posted|Retrieve all posted invoices through batch.|
|Posted -<br/>View posted|View posted invoices.|
|Posted -<br/>Suggested – all lines|Shows all lines that are suggested for automatic coding.|
|Posted -<br/>All lines|Opens a form that shows all posted lines. Can be used for export to Excel.|
|Posted -<br/>All approvers|Opens a form that shows all posted lines. Can be used for export to Excel.|
|Accuracy -<br/>Calculate accuracy of suggestions|
|Accuracy -<br/>Calculate accuracy of suggestions|
|Reference -<br/>Imports|If a posted line is marked, this shows in which import the line has been retrieved.|
|Reference -<br/>Documents|Shows posted documents|
|Reference -<br/>Batch jobs|Shows executed batch jobs.|
|Buttons (Lines)|
|Enabled|If automatic coding should be switched on/off|
|Run at import|If automatic coding suggestions should run when invoices are imported.|
|Enable in import form|If the automatic coding buttons should be visible in ExFlow Import form.|
|Priority in select|This value is how deep in priority will be shown as default when manually selecting invoice coding.|
|Fields (Grouping)|
|Activate|Activate grouping for clusters.|
|Deactivate|Deactivate grouping for clusters.|
|Buttons (Tabs)|
|Vendor settings|Display’s the setup for computing the automatic coding rules.|
|Computed|Display’s the computed lines.|
|Posted|Display’s the posted invoices.|


