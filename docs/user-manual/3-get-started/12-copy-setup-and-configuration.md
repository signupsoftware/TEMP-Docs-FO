---
title: Copy the setup and configuration
sidebar_position: 12
hide_title: true
custom_edit_url: null
---
## Introduction <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

Below information contains is about how to create a copy of ExFlow settings from one legal entity to another in same D365FO environment or from one legal entity to another legal entity where both fall in separate installations.

## Process
There are two way of copying ExFlow Setup and configuration listed below:

### Manual process 
Since ExFlow setup and configuration is not time consuming and due to ExFlow reliance on Std. D365O configuration, manual setup and configuration is always recommended for a proper reliable copy.

It is also recommended to use a specific company setup as template for the new company. Detailed information of the manual configuration process is described further down in this document.

#### Detailed manual process
Start the process by following the instructions/checklist below. Make sure that all master data and standard D365FO configurations (see Exflow Pre-config checklist) are prepared before starting.

1. **Go to ExFlow | Setup | General parameters**

Enter the license code.

Leave host name blank if there is no value entered. Otherwise update to actual URL of environment.

2. **Go to ExFlow | Setup | Configuration**

Click add/delete column.

Follow the guide and enable/perform settings required.
Make sure sort order is unique (e.g. use sort order action button).

3. **Go to ExFlow | Setup | Parameters**
 
Update settings and parameters for all sections of the parameters form.

4. **Go to ExFlow | Setup | Import methods**

These import methods are global. If company specific import method is required, add it.

If using Exflow data capture; don’t forget to contact SignUp Software with details of which companies to be added in the setup (see Exflow data capture installation form)

5. **Go to ExFlow | Setup | Maintenance | Users**

Add all users for ExFlow

6. Open every menu item left in the ExFlow setup menu and add settings if applicable.

![medium](@site/static/img/media/image499.png)

**Tips!**

- Workflows can be exported from one company/environment and then be imported to another Legal enity.
- ​​For detailed information about the functionality behind each parameter, see the separate sections in the documentation.

### Using data entities
You will find data tables in section "Detailed process" which can be used for export/import.

We refer to your partner/Microsoft for a detailed description of how to use the data management tool. If not done correctly it might end up with corrupted data.

#### Detailed process
Below is for further reference of Exflow entites.

|Exflow Parameter/Entity | Dependency|
|:-|:-|
|EXF_tParametersEntity| To setup and change Exflow parameters. COA - Journal names (approval/cancelation/invoice register/General journal for accruals) - Position hierarchy - Worker for default worker approver- workers should have same RecID.|
|EXF_tColumnEntity| Provides functionality to control financial, source dimension and line type account structures in Exflow. Exflow configuration is dependent on Account structure in std D365. Dependent in RecID of dimensions.|
|EXF_tAgreementEntity| With this entity it is possible to modify fields: “Agreement number”, “Start Date”, “End Date”, “Reference”, “Max total invoice amount”, “Total invoice amount",” Vendor account” “Invoice recurrence”, “Currency code”, “Sales tax group” and “Item sales tax group”. Agreement can have same “Agreement number”, “Vendor account”, “Reference”, “Start date” and “End date”.  One of this field must be different otherwise error will be appeared “Agreement cannot be activated!”.|
|EXF_tReferenceEntity| Provides functionality to manipulate Reference person configuration data. It is possible to modify the following fields: "Reference" ,"User/Role", "Personnel number", "Vendor account". "Reference" and "Vendor account" combination must be unique.|
|EXF_tUserTableEntity| Provides functionality to control ExFlow user data. It is possible to add new users or edit the existing ones.|
|EXF_tParametersGlobalEntity| Provides functionality to control ExFlow general parameters.|
|EXF_tFeatureManagementEntity| Provides functionality to enable/disable new features within ExFlow.|
|EXF_tDimensionSourceSetupEntity| Provides functionality to setup dimension source properties.|
|EXF_tUserLevelPermissionEntity| Provides functionality to assign permissions to different user levels.|
|EXF_tUserLevelEntity| To configure user levels.|
|EXF_tImportMethodHead|To setup and change import method header part fields.|
|EXF_tImportMethodLine| To setup and change import method line part fields.|
| Document handling | Document management has to be setup in std D365 with same document types.|


![Graphical user interface, application Description automatically generated](@site/static/img/media/image500.png)

**N.B: SignUp team is not responsible for any failure that might occur when using data entities to copy from one legal entity/environment to another and will not investigate it due to dependencies
explained above.**