---
title: Setup and the PO Reconnect Power App functionality
sidebar_position: 2
hide_title: true
custom_edit_url: null
---
## Setup PO Reconnect Power App 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

### Installation of PO Reconnect canvas app
The PO Reconnect zip fil must be imported into Solutions.

For more details about setting up environments please see Microsoft documentation for more information, 
https://docs.microsoft.com/en-us/power-platform/admin/environments-overview. 

When setting up PO Reconnect you will also be asked to configure Azure blob storage connector, please contact Signup Software for more details on how to get your local settings for this. 
The solution is then shared and published by your administrator; the solution is accessed by a link included in the email when the administrator shares the app.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image423.png)

ExFlow PO Reconnect is imported to environment.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image424.png)

## The canvas app PO Reconnect

### PO Reconnect card view
When the app is accessed, this is the first page that opens. It contains all the invoices where your user is a current approver on at least one row of an invoice. Cost invoices can be changed to become purchase order invoices, existing purchase order invoices can be reconnected to other purchase orders or purchase order lines with for example different items or quantities.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image425.png)

The page can be changed to display the invoices as a list view by clicking the button LIST.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image426.png)

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image427.png)

### Edit mode
The invoice is opened in edit mode and can now be changed. The form contains invoice header information and line information. Only data on the lines can be changed and modified, however data in the field Status, Validation status and Validation message will be updated after save & match functions has run.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image428.png)

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image429.png)


### Multiple choice of purchase order lines
By clicking the symbol for multiple choice, it will open a new form, where the lines to the right are the purchase order lines on the invoice, by selecting and sending lines to the right or left. They will be added or deleted, when clicking Ok, all the lines existing in the right box will be moved down to the invoice line.

**Filter;** can be used to narrow down the selectable purchase order lines in the left box.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image430.png)

### Details of a purchase order
By clicking the symbol ... on a line it will open a new form displaying details about the purchase order. All the lines that belong to the purchase order will be displayed. The line below with the star symbol to the right is the purchase order line that was clicked on the invoice.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image431.png)

###	Expand the invoice line section
By clicking the symbol the line section will be expanded and vice versa.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image432.png)

### Display approver information on invoice line level
By click the symbol ...  to right of a line approver information will be displayed.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image433.png)

### Converting a cost invoice to a purchase order invoice requires purchase order
When opening a cost invoice and clicking the button “Change to PO” the invoice will be changed but only if the vendor of the invoice has existing purchase orders, since an invoice must have at least one purchase order number attached.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image434.png)

### The process of converting a cost invoice to a purchase order invoice
When opening the invoice from the list view, nothing can be changed until the invoice is changed to a purchase order invoice. Use the button “Change to PO” to convert the invoice to a purchase order invoice.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image435.png)

The line is changed; status is set to None and Line type is changed to Item and the line has a suggested purchase order. Now the invoice can be changed, split into several lines, change the item, add a charge line, change the quantity etc. Please also note that “Match status” and “Match result” are blank since the invoice line has not yet been save and matched/prematched.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image436.png)

Choose your desired choice in this case “Save and prematch” and push the update button. As can be seen the status has been changed to Active and Match status and Match result has been updated. The new invoice line can also now be seen in ExFlow Document form.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image437.png)

### General information about PO Reconnect
The app uses behind the scenes’ the following connectors and entities to retrieve and send data between D365 Finance and the PO Reconnect. More information about the app can be found in the technical documentation.

| Connectors/Entities | Function |
| ---- | ---- |
|Office365Users connector |  Used to retrieve the user’s photo, name and email address.|
| AzureBlobStorage connector | Retrieve the invoice images from D365 Finance azure blob storage.| 
| ExFlow_InvoicesLineInfo| Used to retrieve approver from the lines.|
| ExFlow_PurchaseOrders | Used to retrieve purchase order information on header level.|
| ExFlow_PurchaseOrderLines| Used to retrieve purchase order information on line level. |
| ExFlow_POConnectHeaderInfo| Retrieve data from EXF_tTmpDocTable. |
| ExFlow_POConnectLineInfo| Retrieve data from EXF_tTmpDocLine.|
| EXF_tTmpDocTable| Temporary storage table to save header data when changing an invoice before the data is updated to ExFlow_tDocumentTable (Viewed in ExFlow Document form). This table is also updated back with information to PO Reconnect if for example an update has succeeded or not.|
| EXF_tTmpDocLine| Temporary storage table to save line data when changing an invoice, before the data is updated to ExFlow_tDocumentLines (Viewed in ExFlow Document form). This table is also updated back with information to PO Reconnect if for example an update has succeeded or not.|
| EXF_POConnectParameters| Used to retrieve system information such as ExFlow version and D365 Finance version.| 
|

### Security settings in D365 Finance for PO Reconnect
To be able to use the PO Reconnect app the end user needs to be connected to the ExFlow PO Reconnect security role together with the standard security role for web users approving invoices in our web approval user interface: ExFlow web user. 

Below image shows the security duties and security privileges connected to PO Reconnect role. 

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image438.png)