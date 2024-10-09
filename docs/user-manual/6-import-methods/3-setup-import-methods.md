---
title: Setup import methods
sidebar_position: 3
hide_title: true
custom_edit_url: null
---
## Import Methods <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow | Setup | Import methods

This form is used for setting up methods of importing invoice data and images into ExFlow, allowing more than one transport method per company. They are run by the separate batch job “Import invoice XML files (Multiple methods)”. This means that both the standard import setup in ExFlow parameters can be used in combination with multiple import methods. 

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image312.png)

#### File
Can only be used where you have full access to the D365FO machine. Never used in a production environment. Data can be imported from the file area on the computer, XML and PDF import.

#### FTP
Deprecated feature, The method is no longer supported by Microsoft.

#### SFTP
Used to transfer XML and PDF data from a file area with a SFTP service connected. Customer or external partner must be responsible for the SFTP service.
E.g., used for external scanning services, EDI service providers or none pre-packaged OCR tool integrations.

#### ExFlow Data Capture API
Only applicable for ExFlow Data Capture integration. Will connect by REST API calls to transfer data.

#### Azure Blob storage
Used to transfer XML and PDF data from Azure Blob storage. Customer or external partner must be responsible for setup of the Azure blob storage and the transfer of files to it. 
**You cannot use sub folders*. 
E.g., used for external scanning services, EDI service providers or none pre-packaged OCR tool integrations.

#### Middleware
Deprecated feature, The method is no longer supported.

_____________________________________________________

### Setup Import method for ExFlow Data Capture
ExFlow | Setup | Import methods

#### Preparations before setup 
1.	ExFlow Data Capture installation has been submitted to the data capture team, configured, and returned with connection details provided. 
2.	Download standard XSLT or prepare your own
Recommended to use Master Data upload (select correct XSLT).


**Step by step configuration:**
#### Add XSLT repository
-	Go to General – XSLT repository

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image313.png)

-	Select `New`
-	Add the name of the XSLT (e.g., ‘EDC XSLT’)
-	Description
-	Stylesheet for image generation `No`
-	Select ‘Edit’ and browse to the file you have stored
-	Select ‘Upload’
-	Save

#### Setup of method
-	Select ‘New’
-	Import method: ExFlow Data Capture API
-	Description: e.g., ‘EDC TEST’ / ‘RSO PROD’
-	Fill in the ExFlow Data Capture API integration fields from the EDC Installation form.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image314.png)


-	Specify the XSLT by setting toggle to `Yes`
-	Choose name of the XSLT that you uploaded previously (e.g., ‘EDC XSLT’)
-	Ignore DTD processing `No`
-	Process attachments `No` (possible to import original email from Exflow data capture as a file type EML (email))
- Process attachments `Yes` (possible to split the EML file (email) to read attachments and import them separately). In this case setup the method:

**Depending on the license agreement with Kofax different methods can be used.**<br/>
GetAttachments -> Requires an extra license for the Storage Service provided by Kofax.
The method will import the original email as (.EML) when imported into EDC and all its attachments attached to the Document handler.<br/>GetBatchOriginalEmail -> Will give you the original email as .EML file attached to Document handler.<br/>GetBatchOriginalEmailAttachments -> Will give you all the attachments that where included in the email sent to EDC. Same as GetBatchOriginalEmail but you get the attachments unpacked.

*NOTE*: File type EML needs to be created in document management parameters.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image498.png)

-	Use supplier id `No`
-	Attachment document type and Document type invoices; select your preferred document type for storing the invoice image and attachments
-	Enabled `Yes`

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image315.png)

_______________________________________________________

### Setup Import method for ExFlow EDI/XML
ExFlow | Setup | Import methods

#### Preparation before setup
1.	Decide area/service to import files from (SFTP or Azure Blob Storage)
2.	Make sure you have connection details for the method of choice
3.	For PEPPOL or OIOUBL format, you need the package including stylesheets and transformation XSLTs, to setup the import method.

#### Using Azure Blob storage
-	Select ‘New’
-	Import method: Select Azure blob storage
-	Description: e.g., Peppol invoices, OIOUBL or EDI in ExFlow format
-	Import document types: Vendor invoice.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image316.png)

- Fill in the 
    - Storage account name
    - Storage account Key
    - Container reference

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image317.png)

#### Using SFTP
-	Select `New`
-	Import method: Select SFTP
-	Description: e.g., Peppol or OIOUBL invoices
-	Import document types: Vendor invoice
-	Clean XML when Importing using FTP: `No`
-	Use default encoding: Yes (Use default encoding if UTF-8 can't be found)
-	Save

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image318.png)

-	Fill in the FTP address, subfolder, FTP user, FTP password and Port (if applicable)
Important: Depending on the FTP service software, information can be required to be entered differently (e.g., sftp://ftp.signupsoftware.com or ftp.signupsoftware.com, /UAT, /UAT/ etc.)

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image319.png)

_________________________________________________________

### Setup Peppol format - EHF 3.0

**Step by step configuration:**
#### Add XSLT repository
-	Go to General – XSLT repository
-	You need to add all 13 stylesheets 

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image320.png)

-	Select `New`
-	Add the name of the XSLT (see below table)
-	Description (see below table)
-	Stylesheet for image generation Yes/No
-	Select `Edit` and browse to the file you have stored
-	Select `Upload` 
-	Save

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image321.png)

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image322.png)

- Return to main view and setup XSLT transformation
    - Specify XSLT to `Yes`
    - The name of the XSLT – select P_Imptemp

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image323.png)

-	Ignore DTD processing: Yes, if tag in XML source file, see image below, includes Note.dtd, otherwise No.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image324.png)

#### Document configuration
Import methods - General – Document configuration

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image325.png)

-	Select `New` 
-	Document configuration name: Peppol
-	Description: Peppol invoices
-	Image library: Evo Pdf (recommended) or PDF sharp
-	Page size: Select the page size for invoice images
-	Included Stylesheets: Select `Add` and select the 12 xml´s with `Yes` in stylesheet for image generation that you earlier added to the Xslt repository (See below list)
-	Set the stylesheet with name “Stylesheet_BIS-BILLING-3_Invoice+CreditNote.xsl” as Primary.
-	Save and activate the configuration.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image326.png)

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image327.png)

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image328.png)

#### Document setup
Import methods | General | Document setup

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image329.png)

-	Search the import method name that you have created.
-	Select the created configuration from previous step.
    - If needed, you can add separate stylesheets per Legal entity or vendor.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image330.png)

#### Attachments and Document handling
ExFlow | Import methods |

- Attachments
    - If required set Process attachments to `Yes`
    - Allow import without invoice image set to `Yes`
- Save
- Document handling
    - Document type attachment, select where the attached/embedded invoice image shall be stored
    - Document type invoice, select where the generated invoice shall be stored
- Save

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image331.png)

#### PDF Web service
ExFlow | General parameters | tab - PDF web service link.

You need to setup the URL link to the PDF web service provided by Signup if you use EVO PDF. Signup sends the invoice information from Xml to the web service which returns a PDF image.

URL - https://pdfconverter.exflow.io

Password: request from SignUp Software

Port: 443

Use IP address: `No`

This service will in the future require a customer specific configuration. Applicable for customers that wants to generate invoice images in ExFlow according to the PEPPOL base definition.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image332.png)

________________________________________________________

### Setup OIOUBL format
OIOUBL – Mostly used in Denmark, but also in Swedish companies that have legal entities in Denmark. See section 3.6 for Danish utilities "OIO UTS". 

**Step by step configuration:**
#### Add XSLT repository
-	Go to General – XSLT repository
-	You need to add all 6 stylesheets 

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image333.png)

-	Select `New`.
-	Add The name of the XSLT (see below table)
-	Description (see below table)
-	Stylesheet for image generation Yes/No
-	Select Edit and Browse to the file you have stored
-	Select `Upload`
-	Activate and save

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image334.png)

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image335.png)

- Return to main view and setup XSLT transformation
    - Specify XSLT to `Yes`
    - The name of the XSLT – select O_ImpTempl

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image336.png)

#### Document configuration
Import methods - General – Document configuration

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image337.png)

-	Select `New`
-	Document configuration name: OIOUBL
-	Description: OIOUBL invoices
-	Image library: Evo Pdf (recommended) or PDF sharp
-	Page size: Select the page size for invoice images.
-	Included Stylesheets: Select ´Add´ and select the 5 xml´s with `Yes` in stylesheet for image generation that you earlier added to the Xslt repository. (See below list)
-	Set the stylesheet with name “CreditNoteHTML.xsl” as `Primary`.
-	Save and activate the configuration.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image338.png)

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image339.png)

#### Document setup
Import methods | General | Document setup

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image340.png)

- Search the import method name that you have created.
- Select the created configuration from previous step.
    - If needed, you can add separate stylesheets per Legal entity or vendor.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image341.png)

#### Attachment and document handling
ExFlow | Import methods |

- Attachments
    - If required set Process attachments to `Yes`
    - Allow import without invoice image set to `Yes`
- Save
- Document handling
    - Document type attachment, select where the attached/embedded invoice image shall be stored.
    - Document type invoice, select where the generated invoice shall be stored.
- Save

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image342.png)

#### PDF Web service
ExFlow | General parameters | tab - PDF web service link.

You need to setup the URL link to the PDF web service provided by Signup if you use EVO PDF. Signup sends the invoice information from Xml to the web service which returns a PDF image.

URL - https://pdfconverter.exflow.io

Password: request from SignUp Software 

Port: 443

Use IP address: `NO`

This service will in the future require a customer specific configuration. Applicable for customers that wants to generate invoice images in ExFlow according to the PEPPOL base definition.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image343.png)

________________________________________________________

### Setup OIO UTS- Utility Statement 
ExFlow | Setup | import method

**Step by step configuration:**
#### Import setup
-	Select New.
-	Import method select SFTP or Azure blob storage.
-	Add description: e.g., OIO UTS.
-	Import document types: Select ´Attachment´.
-	Save.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image344.png)

#### Add XSLT repository
-	Go to General – XSLT repository.
-	You need to add 2 stylesheets.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image345.png)

-	Select `New`.
-	Add The name of the XSLT (see below table).
-	Description (see below table).
-	Stylesheet for image generation Yes/No.
-	Select Edit and Browse to the file you have stored.
-	Select `Upload`. 
-	Activate and save.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image346.png)

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image347.png)

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image348.png)

-	Select `Edit`.
-	´Browse´ and select the file you have stored.
-	Upload – Select `OK`.
-	Save.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image349.png)

#### XSLT transformation and document handling
ExFlow | Import methods |

- XSLT transformation:	
    - Set specify XSLT to `Yes`.
    - The name of the XSLT – select ´OIO UTS´. 
- Save.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image350.png)

- Document handling: 
    - Document type attachment, select where the invoices should be stored.
    - Document type invoice, select where the invoices should be stored.
- Save.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image351.png)

________________________________________________________

### Attachment form
Exflow | Inquiries and reports | Attachment form

When you have attachments imported related to a specific invoice i.e. for Danish utility statements, they are usually imported after the invoice has arrived. From this form you can easily connect the attachment to the invoice.

**Note: This form does not show attachments added within ExFlow or ExFlow web.**

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image352.png)

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image353.png)

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image354.png)

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image355.png)

#### Attach manually to invoice

-	Select Attach manually
-	Find the invoice in import form or document form lists
-	Select `ok`

The attachment is now added to invoice and visible from ExFlow forms.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image356.png)

_________________________________________________________

### Company identifiers
To make sure that the legal entities are found when ExFlow imports the invoice files, and if you are missing the company id in the Xml file you need to setup EAN, Tax no. etc. and point them to the correct D365FO legal entity (company area id).

 1.	Go to General | Company identifiers.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image357.png)

2.	Select `New`.
3.	External company id; Type the company id that is received the import files.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image358.png)

4.	Company ID; Type the legal entity in D365FO.
5.	Select `Save`.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image359.png)

_______________________________________________________

### Generate vendor XML and upload vendor information
To generate the XML file containing the current vendor information, users can navigate to:
ExFlow | Setup | Import method | General | Verify configuration | Generate vendor xml. 

After the execution, a vendor XML file will be generated and downloaded, containing the up-to-date vendor details. Like: “Supplier number”, “Name”, “Organization number", “Currency”, etc.
This downloaded XML file can be used as a draft for future uploads when there are additional vendors to be included. Users can utilize this file as a template, making it easier and more efficient to update vendor information in occurring uploads.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image360.png)

The new button, "Upload vendor information to ExFlow Data Capture (Multiple methods)," provides users with a convenient way to upload vendor information. This feature offers flexibility by supporting various methods for importing vendor data.

The dialog form associated with the "Upload vendor information" allows users to specify their preferred import method. They can choose from the available options, ensuring that the system accommodates their specific requirements and facilitates a seamless vendor data upload process as well it can be run a batch job.

![small](@site/static/img/media/image361.png)



