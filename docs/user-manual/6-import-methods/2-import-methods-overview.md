---
title: Import methods overview 
sidebar_position: 2
hide_title: true
---
## Import Methods overview <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

ExFlow \| Setup \| Import methods

![A screenshot of a computer Description automatically generated](@site/static/img/media/image22.png)

This form is used for setting up methods of importing invoice data and images into ExFlow, allowing more than one transport method per company. They are run by the separate batch job "Import invoice XML files (Multiple methods)".

This means that both the standard import setup in ExFlow parameters can be used in combination with multiple import methods. ExFlow also supports PEPPOL, OIOUBL formats.

|Buttons action pane|
|:-|:-|
|Save|Save.|
|New|Setup a new import method.|
|Delete|Deletes the selected line.|
|General/XSLT repository|![](@site/static/img/media/image23.png)The XSLT file that transforms the data into the ExFlow format.<br/>Active: If the XSLT file should be used.<br/>Edit: Edit the existing XSLT file or upload a new file.|
|General/Certificate|![](@site/static/img/media/image24.png)Setup the certificate used for SFTP.<br/>Active: If the certificate should be used.<br/>Edit: Upload a new certificate.|
|General/Available mime types| Setup mime types.|
|General/Company identifiers| Select the Legal entity. To make sure that the legal entities are found when ExFlow imports the invoice files, and if you are missing the company id in the Xml file you need to setup EAN, Tax no. etc. and point them to the correct D365FO legal entity (company area id).|
|General/Document configuration | To configure the document setup.|
|General/Document setup | Select the previous configured document XSLT and select the import document types.|
|General/Show files|Connects to the import method and display’s the accessible files ready for import.|
|General/Test connection | To test the connection between selected area/service and Exflow import method.| 
|General/View connected buyers | To view connected buyers from EDC.
|General/Generate vendor xml | To generate vendor xml when using upload vendor master data.|
|Enabled|If the import method should be activated.|
|Import method|Select the import method to configure, supported methods are File (only used for testing purpose, not supported in sandbox and prod), SFTP, ExFlow Data Capture API.|
|Description|Description of the import method you configure.|
|Import document types|The type of document that the method should import. If it is a vendor invoice or if it is an attachment.|


|FTP|
|:-|:-|
|FTP Address|The address to the FTP server.|
|Subfolder|If an FTP subfolder is used.|
|FTP user|FTP username.|
|FTP password|FTP password.|
|Clean XML when importing using FTP/SFTP|If the imported XML should be cleaned from forbidden signs such as ampersand characters.|
|Use default encoding|If default encoding of the imported file should be used if UTF-8 encoding format could not be found.|


| SFTP|
|:-|:-|
| Port | If a dedicated port should be used.|
| Use certificate | If a certificate should be used for the SFTP connection. |
| Certificate | Which certificate that should be used.|

| XML transformation   |
|:-|:-|
| Specify XSLT         | Specify if a unique XSLT should be used. |
| The name of the XSLT | Choose the XSLT file to be used.         |
| Ignore DTD processing| Yes, if tag in XML source file, see image below, includes Note.dtd, otherwise No. See more information in setup instructions.       |

| Attachments                        |
|:-|:-|
| Process attachments                | If attachments should be fetched based on the information from the XSLT file, multiple attachments are now supported. |
| Attachment folder                  | A subfolder on the FTP server that store the attachments.                                                             |
| Allow import without invoice image | Allow the xml invoice to be imported without an invoice image.  |
| Attachment folder                  | A subfolder on the FTP server that store the attachments.                                                             |
|Clean Base64 string| To clean the Base64 string.|

| External codes  |
|:-|:-|
| Use supplier id | If supplier id from ExFlow Data Capture online should be used, set to Yes. |
| Vendor code | Vendor code. |

|Document handling|
|:-|:-|
|Document type invoice|Reference to the standard D365 FO document type, to be used by ExFlow for storage of invoice files.|
|Attachment document type|Reference to the standard D365 FO document type, to be used by ExFlow for storage of invoice files.|

|Import method ExFlow Data Capture API|
|:-|:-|
|**ExFlow Data Capture API** integration|![](@site/static/img/media/image25.png)|
|Enabled|If the method should be active.|
|Import method|Which import method to be used.|
|Description|Description.|
|Web service URL|The URL to the API service for ExFlow Data Capture.|
|API Key|The API Key given to you by your ExFlow Data Capture partner.|
|User name|The ExFlow Data Capture user name that is connected to the companies in ExFlow Data Capture that shall be imported.|
|Password|Your ExFlow Data Capture password.|
|XSLT Transformation/Specify XSLT| If a unique XSLT should be used.|
|XSLT Transformation/The name of the XSLT|Which XSLT that should be used.|
|XSLT Transformation/Ignore DTD processing| Yes, if tag in XML source file, see image below, includes Note.dtd, otherwise No. See more information in setup instructions.|
|Attachments/Process attachments | If attachments should be fetched based on the information from the XSLT file, multiple attachments are now supported. |
| Attachments/Method| Select GetAttachments or GetBatchOriginalEmail. |
|Clean Base64 string| To clean the Base64 string.|
|External codes/Use supplier id| Yes to use supplier id from external system.|
|External codes/vendor code |A vendor code used for storing the template id has to be setup before using this functionality. This is done via the standard external codes for vendor form. (Acc.payable, Vendors, All vendors,tab procurement, Setup, External codes) |
|Document type invoice|Reference to the standard D365 FO document type, to be used by ExFlow for storage of invoice files.|
|Attachment document type|Reference to the standard D365 FO document type, to be used by ExFlow for storage of invoice files.|


| Import method Azure Blob Storage   |
|:-|:-|
| Azure Blob Storage                 | ![](@site/static/img/media/image27.png)                  |
| Enabled                            | If the method should be active.                                                                     |
| Storage Account Name               | The name of the storage account in azure.                                                           |
| Storage Account Key                | The key to the storage account in azure.                                                            |
| Container reference | The container name that holds the file in azure. |
| Clean XML when importing using FTP/SFTP | Yes/No to cleand the XML.| 
| XSLT Transformation/Specify XSLT| If a specific XSLT should be used for the XML file. |
|XSLT Transformation/The name of the XSLT| Which XSLT that should be used.|
|XSLT Transformation/Ignore DTD processing| Yes, if tag in XML source file, see image below, includes Note.dtd, otherwise No. See more information in setup instructions.|
| Attachments/Process attachments | Yes, If separate attachment files should be imported. |
| Allow import without invoice image | If set to yes, it is allowed to import invoice data that has no corresponding invoice image files.  |
|Attachments/Container reference | The container name the holds the files in azure.  |
|Clean Base64 string| To clean the Base64 string.|
|External codes/Use supplier id| Yes, if use supplier id from external system. |
|External codes/vendor code |A vendor code used for storing the template id has to be setup before using this functionality. This is done via the standard external codes for vendor form. (Acc.payable, Vendors, All vendors,tab procurement, Setup, External codes) |
|Document handling/Document type invoice | Reference to the standard D365 FO document type, to be used by ExFlow for storage of invoice files. |
|Document handling/Attachment document type | Reference to the standard D365 FO document type, to be used by ExFlow for storage of invoice files. |

