---
title: Setup Summarize
sidebar_position: 2
hide_title: true
---
## Setup Summarize <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

This functionality is not recommended to switch on if your installation does not have invoices with many rows. 

For example, when an invoice has 500 lines the rows can be summarized based on line type and approver, only the summarized lines will be sent out for approval. This functionality can also be setup based on vendors meaning if you know you have 4 vendors with a lot of lines, the rest of the invoices will be handled as before.

### Turn on ExFlow parameter
ExFlow \| Setup \| Parameters

There is a parameter flag in the ExFlow parameters form that turns on the summarize functionality.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image208.png)


### Document Summarize settings
ExFlow \| Setup \| Miscellaneous \| Document summarize settings

The document summarize settings form is used to determine which vendors invoices that should be summarized. It can be setup with Table, Group or All. At least one All line has to be setup, recommended is that it is setup based on unique vendors or groups.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image209.png)

#### Vendor settings
| Field | Function |
| ---- | ---- |
Valid for |  Table, Group, All. |
| Account selection | Used when table and group is selected.| 
| Name | Name of the specific vendor or group. |
| Lines | The total number of lines an invoice must have for the summarize function to be run (invoices below the number of lines will not be included int the batch job). |
| Active | If the rule schould be used or not. |
| Create attachment |If an excel attachment should be added displaying all the original lines of an invoice. | 
| Auto confirm | If a summarized invoice should be automatically confirmed if the rule has been run at import. Meaning it is ready to be updated by the summarized batch job.| 
| Simulate | If the summarize functionality should create an excel attachment when an invoice is imported, displaying how the summarized lines will look like for the approver.|

#### Grouping
| Field | Function |
| ---- | ---- |
| Field name | The criteria’s that are used to summarize lines (Approver is always used).| 
| Active | If the criteria should be used or not.|
| Dimension | Displaying if a criteria is a dimension in the system.|
| Lines | The number of lines an invoice must for the summarize function to be used.|

### Vendor groups for summarized documents
ExFlow \| Setup \| Resources \| Vendor Groups for summarize documents

When using group in “Document summarize settings”, the groups are created in the form in the image below. A group is created and vendors in the lines are added.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image210.png)

### Batch jobs
There are two batch jobs used with summarized function. One batch job creates the summarized lines based on the original lines of an invoice. The other batch job updates the original lines status of an invoice when a summarized line has been approved or rejected.

#### Summarize document
ExFlow \| Periodic tasks \| Miscellaneous \| Summarize document

This batch job creates the summarized lines based on the original lines of an invoice and creates the excel attachment that display the original lines of an invoice.

#### Update summarized lines
ExFlow \| Periodic tasks \| Miscellaneous \| Update summarized lines

This batch job updates the original lines based on the action on the summarized lines that has been sent out for approval or rejection.  