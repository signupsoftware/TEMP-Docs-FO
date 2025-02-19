---
title: Imported invoice history
sidebar_position: 9
hide_title: true
custom_edit_url: null
---
## Introduction <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow \| Inquiries and reports \| Imported invoice history

This function will import old ExFlow data from AX 2012 into a history form in D365 FO. The function is divided into two parts; first an XPO is needed to be imported in AX2012 with functionality to export XML files and the invoice PDF files. To import the files/data into D365 FO an FTP is used. Once the data is imported in D365 FO the old ExFlow data from AX 2012 can be viewed inside D365FO. Contact Signup Software AB for more details about this functionality.

The import is done using a composite entity, meaning the entity is including more than one (1) entity. So, the import handles both header and lines in the same import.
In this case, the entity structure is like this:
ExFlow Import invoice history (Composite)

- EXF_tImportedInvoiceHistoryHeaderEntity
    - Invoice headers and related data
- EXF_tImportedInvoiceHistoryLinesEntity
    - Invoice line and related data
        - Related to EXF_tImportedInvoiceHistoryHeaderEntity
- EXF_tImportedInvoiceHistoryDimensionsEntity
    - Accounts and dimensions for the line
        - Related to EXF_tImportedInvoiceHistoryLinesEntity
- EXF_tImportedInvoiceHistoryApproversEntity
    - Approvers for the line
    - Related to EXF_tImportedInvoiceHistoryLinesEntity

Data for the imported invoice history is not saved per company. All imported invoices will be seen in all companies. The way to see the company is in column Company ID in the import form.
______________________________________________________________________________

### Setup
Workspaces | Data management | Data entities should there be entities like this:

![Graphical user interface, table Description automatically generated](@site/static/img/media/image439.png)

If the entities are missing, there might be needed to refresh the entity list in Data framework parameters.

![Graphical user interface, table Description automatically generated](@site/static/img/media/image440.png)

### Import file

#### File
The structure and data are described in the file “XML-documentation History Table.xlsx”.

**Contact Signup for template**

![Graphical user interface, table Description automatically generated](@site/static/img/media/image442.png)

#### Import
- Create a new import in Data management
- Name the import
- Select "Add file"
- Entity name: ExFlow Import invoice history(Composite)
- Source data format: XML-Attribute
- Use sample file: Yes
- Upload data file: xml-file to import
- Select Import 
- Go to 'ExFlow -Inquiries and reports - Imported invoice history'
- Press 'Calculate imported'
- To import invoice file and connect correct to invoice, set up an FTP, and place attached pdf-files in the ftp-folder
- Press 'Import invoice attachments', and give FTP-address with port, user and password
- Files will be imported, and a checkbox in column 'Document' is set.
- Press 'Show invoice' to see the invoice in new window, or 'View side by side'.

![Graphical user interface, table Description automatically generated](@site/static/img/media/image441.png)

#### Result from import

![Graphical user interface, table Description automatically generated](@site/static/img/media/image443.png)

### Form to view imported invoices
ExFlow |Inquires and reports | Imported invoice history

All imported invoice is shown here, with information about Invoice header, invoice lines, dimensions and approvers.

### Buttons
#### Import invoice attachments

Using FTP for import of pdf.
Opens a function, where exported pdf-invoices are connected to correct imported invoice. 
The connection between an imported invoice and pdf-invoice is some logic in the filename: xxx.pdf
LE: Origin company from exported system
56371xxx: Unique Record Id from exported system
xxx.pdf: Origin filename from exported system

The name of the file must be constructed like this, so the import can find correct invoice pdf for the correct imported invoice.

**Example of settings when import:**

![Graphical user interface, table Description automatically generated](@site/static/img/media/image444.png)

Every invoice that has a connected pdf, has a checkbox in the grid, and a mark in attachments as standard.

![Graphical user interface, table Description automatically generated](@site/static/img/media/image445.png)

#### Show invoice
If a document is attached to the invoice, this button is enabled. Opens a form for view the pdf. 
The document is attached using standard document handling in F&O.

#### Calculate imported invoices
Use this to validate imported data against expected data from the exported system and against information from Data management. 

![Graphical user interface, table Description automatically generated](@site/static/img/media/image446.png)

