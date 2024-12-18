---
title: Thailand
sidebar_position: 7  
hide_title: true
custom_edit_url: null
---
## Thailand <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

### Setup
Withholding tax in Thailand refers to the tax that is deducted at the source of income and should be setup in standard configuration before continuing to work with Exflow. 

For more detailed information see Microsoft Docs:
https://learn.microsoft.com/en-us/dynamics365/finance/localizations/thailand/apac-tha-withholding-tax#set-up-thailand-withholding-tax

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image568.png)

**Note! That global withholding tax should be disabled when working with Thailand withholding tax.**

General ledger\| Ledger setup\| General ledger parameters
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image569.png)


### Process
#### Import form

Withholding tax is set in the invoice header from import form:
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image570.png)

#### Document form
After the posting of the invoice to document form, the "Calculate withholding tax“ parameter is set to `Yes` and the item withholding tax group is also populated on the header:
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image580.png)

![medium](@site/static/img/media/image579.png)


### Project lines available to calculate withholding tax
After a change from ExFlow version 2.16, withholding tax in ExFlow for the Thailand localization and the feature Global withholding tax. 
ExFlow will also be taking the Project lines and not only taking the Ledger lines as base for the withholding tax transactions.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image625.png)