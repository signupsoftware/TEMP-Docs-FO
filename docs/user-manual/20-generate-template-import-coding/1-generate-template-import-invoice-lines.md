---
title: Generate template for importing invoice lines
sidebar_position: 1
hide_title: true
---
import anythingYouWant from "/video/Import_Coding_From_Excel.mp4";

## Generate template for importing invoice lines <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

ExFlow \| Setup \| Miscellaneous \| Generate template for importing invoice lines

The ExFlow Import form features a function that enables users to import lines from a CSV or Excel sheet, resulting in the creation of an imported invoice. This functionality also allows users to generate CSV or Excel file templates specifically tailored to different line types such as Ledger, Projects, or Fixed Assets. It's important to remember that separate templates must be created for each line type.
One common business scenario where this functionality is useful is when a user needs to split an invoice into multiple lines. The pre- defined template is created and managed in Excel.
A typical example is if a company receives cost invoices of employee’s cell phones that each line on the invoice is marked with a telephone number and that represents the cost center for that employee. The benefit of this is then that you will get the invoice on line level already divided into separate lines with the correct accounting. 

![Table Description automatically generated](@site/static/img/media/image202.png)

### Step by Step process

#### Generate a new template for importing invoice lines
a.	Go to ExFlow – Setup – Miscellaneous - Generate template for importing invoice lines.
b.	Select the file format for import; Excel or CSV.
c.	Select the Content; Ledger, Project or Fixed asset.

![Table Description automatically generated](@site/static/img/media/image203.png)

d.	Press OK (the editable file is now generated).
e.	Save the generated file on your computer.
f.	Populate the template with the line information required and save the file.

![Table Description automatically generated](@site/static/img/media/image204.png)

#### Import the file to the invoice from import form

a.	Go to ExFlow Invoices – Import form (All or Expense).
b.	Select “Edit” to make changes on the invoice.
c.	Go to general –> import from file.

![Table Description automatically generated](@site/static/img/media/image205.png)

d.	Select “Browse” and find the file with populated with data that you saved in earlier step.
e.	Press OK, the invoice will now be populated with data from the CVS/excel file.

![Table Description automatically generated](@site/static/img/media/image206.png)

|Fields | Description |
| ---- | ---- | 
Merge with default dimensions | Merge from default main account and financial dimensions from vendor account.
| Apply derived dimensions | When enabled, ExFlow utilizes derived dimensions from the dimension setup in cases where no specific dimensions are defined within the template. |
| Account Structure validation | This parameter performs a validation process by comparing the dimensions per invoice line in the template with the dimension account structures. In the event of a mismatch, ExFlow will refrain from importing any account or dimension associated with that line. |


f.	All the rows from the template are imported and applied as invoice lines: 

**Tips!** You can save the generated template and reuse it for the next invoice.

![Table Description automatically generated](@site/static/img/media/image207.png)

<video controls width="100%">
  <source src={anythingYouWant}/>
</video>
