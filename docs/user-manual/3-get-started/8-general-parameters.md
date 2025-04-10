---
title: General parameters
sidebar_position: 8
hide_title: true
custom_edit_url: null
---
## General parameters <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow \| Setup \| General parameters

### Parameters
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image14.png)

| Parameters | |
|:-|:-|
| Hostname | The link with the "Hostname" is automatically updated and used when an external link is created for invoice images to be used, for example in Power BI (Business Intelligence). This link only needs to be updated manually when a test environment is set up based on production. This link is used in conjunction with the periodic job "Update invoice image URL". |
| License code | It is mandatory to obtain and fill in a license code to be able to use ExFlow. To obtain the license code please contact Signup Software AB or your ExFlow partner.

### License information
Licens handling information found here; https://docs.exflow.cloud/finance-operations/docs/user-manual/get-started/license-handling

![Graphical user interface, application Description automatically generated](@site/static/img/media/image15.png)

|License information| |
|:-|:-|
|Is valid|Shows if the license is valid.|
|Valid To Date|Valid to date is used if you have received a demo license.|
|License Terms<br/>Number of invoices|Number of invoices your license is valid for for 12 months.|
|License Terms<br/>Users|Number of users your license is valid for.|
|Current Value<br/>Number of invoices|Processed invoices.|
|Current Value<br/>Users|Setup users in ExFlow.|
|Button - Report|Opens a new form with a summary for all invoices for all companies.|


### Invoices per company report
![Graphical user interface Description automatically generated](@site/static/img/media/image16.png)

| Invoices per company | |
|:-|:-|
| From date | From date |
| To date  | To date |
| Total number of invoices | Total number of invoices run in ExFlow  |
| Button - Ok  | Executes the query that displays number of invoices per company |


### Web setup
![Graphical user interface Description automatically generated](@site/static/img/media/image17.png)

| Web setup  | |
|:-|:-|
| Recent| Number of day's for the filtering of processed invoices for the "Recent" folder in ExFlow web and My vendor invoices. (Value 0 = 30 days by default)|
| Fast fetch invoice document to web | If this setting is switched on a different communication method between ExFlow web and D365FO is used that will speed up the communication for invoices with hundreds of lines. The old way will be deprecated in later versions.|
| Fast validate in ExFlow web  | Used in combination with Split validate functionality. |
| Merge dimensions | If set to "Yes", when changing accounting in ExFlow web the dimensions from the vendor and the dimensions from the main account will be merged. If set to "No" the dimensions are set from the account and if no dimensions are setup on the account, they are fetched from the vendor. |
| Fast communication with web  | Used in combination with Split validate functionality.|
| Send invoice remainder quantity |  If set to ‘Yes’, the quantity field in Exflow web shows the invoice remainder quantity. If set to ‘No’ Quantity field will show total ordered quantity.|

### Document chat
![Graphical user interface Description automatically generated](@site/static/img/media/image18.png)

| Document chat | |
|:-|:-|
| Filter users  | Determines if the chat functionality should be limited to the user's setup in the current company for which the invoice is registered in. |

### PDF Web service

#### Setup option for PDF Web Service
If PDF web service is used, relevant information should be entered here.<br/>
Needs to be setup if the customer generate images based on the xml invoice or use the "create debit/credit" functionality.

|PDF Web service| |
|:-|:-|
|Web service URL|The URL for the web service.|
|Password| Password.|
|Port|Specify port for web service or use port 40001.|
|Use IP address|Connect with IP adress instead of URL.|

<br/>

#### Setup of invoice image generating using external blob storage
If there is a need to use external blob storage for generating invoice image.<br/>
Additional fields like Storage Account name, Storage Account Key and Container reference that have to be populated.<br/>

:::info **NOTE: That the storage account is required to have Allow blob anonymous access enabled as public.**
:::

|Azure storage| |
|:-|:-|
|Use external blob storage|Enables the use of the external blob storage.|
|Storage account name|Storage account name	The name of the storage account in Azure Storage.|
|Storage Account Key|The key to the storage account in Azure Storage.|
|Container reference|The container name that holds the file in Azure Storage.|

![Medium](@site/static/img/media/image19.png)

### Line item charges
![medium](@site/static/img/media/image20.png)

|Line item charges| |
|:-|:-|
|Line item charges|When selected, the line item charge menu items in ExFlow Parameters are made available and selectable<br/><br/>Please also see the relevant white paper or contact your ExFlow partner for further details.|


### Feature management
The feature management tab is used to enable/disable new features within ExFlow. Please see release notes or user manual for more information about the specific feature.

![small](@site/static/img/media/image21.png)

|Feature management| |
|:-|:-|
| Validate project line quantity| Correction made and schould always be enabled|
| Override charge dimension| To override the dimensions on charge setup|
| New calculate approvers | To calculate approver in workflows, should always be enabled|
| Match import and run suggest approver fast| should always be enabled|
| Disable logic to switch Price include sales tax flag for global withhold tax| Mainly for Norwegian customers, should always be enabled|
| ExFlow Automatic invoice coding| This function is a help when working with import of invoices Both when the actual import is executed and then it can be a help in the form for imported invoices.
| ExFlow financial dimension web lookup performance improvements| This feature speeds up the performance for the financial dimensions lookup on ExFlow Web in most scenarios. Please note, enabling this feature may cause some extensions to stop working|
|New invoice register journal posting|Is a new logic for the journal that D365 std uses. This is because the old Exflow logic didn’t supports SII reports in Spain. This parameter is only active for Spanish customers and the customers that wants to have It active from the beginning.|
|Vendor statement|To activare vendor statement functionality|
|Approver workflow| Enables the new approver workflow functionality|
|AI/ML Service| Enables the AI/ML service|
|New Xml serializer|Enabled as default| 
|Tax calculation framework|Enables the Tax calculation framwork|

### System Options
![medium](@site/static/img/media/image494.png)

|System options| |
|:-|:-|
| Validate invoice in ExFlow web| To validate all lines on the invoice and get all the errors in the same time. Without this enabled, Exflow stops on the first error and then after correction looks at the next one and so on. <br/>0 = disabled,<br/> 1= default. <br/>1 thread for all validations. <br/>2-xx = Splits the validation in parallel threads.<br/>|

### Vendor statement
To initiate subscription and activate the Vendor statement product.

![medium](@site/static/img/media/image565.png)

### Number sequences

![medium](@site/static/img/media/image566.png)