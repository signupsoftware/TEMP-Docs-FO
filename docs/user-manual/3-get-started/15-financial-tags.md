---
title: Financial tags
sidebar_position: 15
hide_title: true
custom_edit_url: null
---
## Financial tags in ExFlow
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

### Background
The Financial tags feature in D365 eliminates the need to use document numbers, descriptions, or financial dimensions by letting an organization create and enter up to 20 user-defined fields on transactions. Those fields are then stored on the accounting entries that are created for the transactions. Tag values aren't stored in any subledger tables, the customer transactions or vendor transactions table.

## Setup
### Feature
Enable feature for Financial tags in D365FO.<br/>

![medium](@site/static/img/media/image702.png)

### General ledger
General ledger\| Chart of accounts\| Financial tags\| Financial tags<br/>
This is standard setup for Financial tags, see more in MS learn.

https://learn.microsoft.com/en-us/dynamics365/finance/general-ledger/financial-tag<br/> 

![medium](@site/static/img/media/image703.png)

### Configuration
ExFlow AP\| Setup\| Configuration<br/>

#### ADD/DELETE COLUMNS
Only active Financial tags are shown as possible to handle.
Financial tags that are active in columns but are NOT active in Financial tags setup, are shown as grey and not enabled.<br/>
This will remove the Financial tags from configuration, (Customer and Fixed Asset).<br/>

![medium](@site/static/img/media/image704.png)

#### VISIBILITY IN CONFIGURATION
All Financial tags in columns have the source that begins with TAG, and this is a reference to the record in Financial tags form.<br/>
Column with Map value field and Map description field is a lookup against a reference table such as vendor, customer, etc.<br/>
If a column has FinTagValue in EDT, but no values in the MAP-fields, it is a lookup against own-defined lookup in Financial tags. If there is no value in none of these fields, it is a free text field.<br/>

![medium](@site/static/img/media/image705.png)

#### RENAME A FINANCIAL TAG
General ledger\| Chart of accounts\| Financial tags\| Financial tags<br/>

There is a possibility to rename the Financial tags. This can give a difference between the Financial tags and the name for the column.<br/>
This is handled when the user opens the form for Configuration, 
(ExFlow AP\| Setup\| Configuration).\|
The Labeled is corrected, and the wizard and ExFlow web are using the new name.\|

### Usage
#### IMPORT FORM
Financial tags can be set on invoice and invoice line. If change is made on invoice, user gets the question if invoice values should be written down to all lines. Be aware of that all Financial tags values will be copied, not only the changed value.<br/>

![medium](@site/static/img/media/image706.png)<br/>

![medium](@site/static/img/media/image707.png)<br/>

![medium](@site/static/img/media/image708.png)<br/>

#### DOCUMENT FORM
Same function as in import form.<br/>
The values in document form can also be changed from the web, and changes will be made on invoice lines.<br/>

#### EXFLOW WEB
The fields and values are presented among all the other fields on the lines.<br/>
Values can be changed, and all values will update the values in document form.<br/>

![medium](@site/static/img/media/image709.png)<br/>

![small](@site/static/img/media/image710.png)<br/>

#### WORKFLOW
Workflow criteria’s can be used both on invoice document and invoice lines.<br/>

![medium](@site/static/img/media/image711.png)<br/>


