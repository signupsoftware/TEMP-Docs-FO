---
title: Generate template for importing invoice lines
sidebar_position: 1
hide_title: true
custom_edit_url: null
---
<!--
import anythingYouWant from "/video/Import_Coding_From_Excel.mp4";
-->
## Generate template for importing invoice lines 
<button class="pdf-button btn_higher" onClick={() => { print(); }}>Save as PDF</button>

ExFlow \| Setup \| Miscellaneous \| Generate template for importing invoice lines

The "ExFlow Import from file" feature is a function that enables users to import coding lines from a CSV or Excel sheet. This functionality also allows users to generate CSV or Excel file templates specifically tailored to different line types such as ledger, project, fixed asset or procurement and with support for multiple lines types and possibility to import different line types from file for same invoice.
One common business scenario where this functionality is useful is when a user needs to split an invoice into multiple lines. The pre- defined template is created and managed in Excel.
A typical example is if a company receives cost invoices of employee’s cell phones that each line on the invoice is marked with a telephone number and that represents the cost center for that employee. The benefit of this is then that you will get the invoice on line level already divided into separate lines with the correct accounting. 

![Table Description automatically generated](@site/static/img/media/image202.png)

### Step by Step process

#### Generate a new template for importing invoice lines
a.	Navigate to ExFlow – Setup – Miscellaneous - Generate template for importing invoice lines.<br/>
b.	Select the file format for import; Excel or CSV.<br/>
c.	Select the Content; Ledger, Project, Fixed asset or Procurement.<br/>

![Table Description automatically generated](@site/static/img/media/image203.png)

d.	Press OK (the editable file is now generated).<br/>
e.	Save the generated file on your computer.<br/>
f.	Populate the template with the line information required and save the file.<br/>

![Table Description automatically generated](@site/static/img/media/image204.png)

#### Import the file to the invoice from import form

a.	Navigate to ExFlow Invoices – Import form (All or Expense).<br/>
b.	Select “Edit” to make changes on the invoice.<br/>
c.	Go to general –> Import from file.<br/>

![Table Description automatically generated](@site/static/img/media/image205.png)

d.	Select “Browse” and find the file with populated with data that you saved in earlier step. <br/>
e.  If required, select the options for merge default dimensions, apply derived dimensions, validate account structure or Keep existin lines as explained in the table below. <br/>
f. Press OK, the invoice will now be populated with data from the CSV/excel file.<br/>
g.	All the rows from the template are imported and applied as invoice lines.<br/> 

![Table Description automatically generated](@site/static/img/media/image206.png)

|Fields | Description |
| ---- | ---- | 
Merge with default dimensions | Merge from default main account and financial dimensions from vendor account.
| Apply derived dimensions | When enabled, ExFlow utilizes derived dimensions from the dimension setup in cases where no specific dimensions are defined within the template. |
| Account Structure validation | This parameter performs a validation process by comparing the dimensions per invoice line in the template with the dimension account structures. In the event of a mismatch, ExFlow will refrain from importing any account or dimension associated with that line. |
|Keep existing lines|Keeps the existing/original coding lines on the invoice and adding the lines from template when importing lines from file.|

**Tips!** You can save the generated template and reuse it for the next invoice.

![Table Description automatically generated](@site/static/img/media/image207.png)
<!--
<video controls width="100%">
  <source src={anythingYouWant}/>
</video>
-->

<video src="https://docs.signupsoftware.com/videos/FO/Import_Coding_From_Excel.mp4" width="600" height="400" controls></video>