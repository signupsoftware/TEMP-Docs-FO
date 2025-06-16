---
title: Sales tax in ExFlow
sidebar_position: 9
hide_title: true
custom_edit_url: null
---

## Sales tax in ExFlow <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

## Tax Calculation Service

### Introduction

This documentation explains how ExFlow leverages the Sales Tax Calculation Service functionality in D365FO, covering prerequisites and the integration implications of using ExFlow with the sales tax calculation framework.<br/>

**Audience:** D365FO application specialists and end users familiar with tax handling and accounting in D365FO.

### Limitations

This documentation does not cover general tax handling in D365FO or all potential tax setup scenarios.

https://learn.microsoft.com/en-us/dynamics365/finance/localizations/global/global-tax-calcuation-service-overview

### Background and Business value

The Tax Calculation Service is a microservice on Microsoft Azure designed to enhance tax determination and calculation in Dynamics 365 Finance and Supply Chain Management. It automates and standardizes tax processes across regions, supports flexible configurations, and simplifies compliance.

**Business value**
- Automates and standardizes tax determinations and calculations across countries/regions.
- Provides a configurable tax determination matrix and calculation designer for complex rules.
- Simplifies compliance with local tax regulations.

### Configuration
- Legal Entity Enablement: Enable tax calculation at the legal entity level.
- Business Process Enablement: Specify which processes utilize the tax calculation service. For example, tax calculation may be enabled for purchase processes while retaining standard settings for sales.<br/>

The system configures tax codes, rates, and deductibility based on various fields in taxable documents, such as shipping addresses, item categories, and counterparty nature.<br/>

### Prerequisites setup in D365FO

This document does not provide detailed instructions on standard D365FO setup for the Sales Tax Calculation service but includes a brief overview of the essential setup steps.<br/>
For ExFlow to be able to utilize the sales tax calculation framework the following setup has to be setup in standard D365FO:<br/>

#### Globalization studio

In version 10.0.39 and later, the Regulatory Configuration Service (RCS) functionality is integrated into the Microsoft Dynamics 365 Finance Globalization Studio workspace.<br/>
Within the Globalization Studio workspace, configuring a service provider is required.<br/>

Tax calculation configurations are accessible via the Tax configurations tile, which you can reach by selecting Electronic reporting in the Globalization Studio workspace.
Under the Tax Calculation tile, you can then proceed with the tax configuration.<br/>

![medium](@site/static/img/media/image739.png)
<br/>

![medium](@site/static/img/media/image740.png)
<br/>


#### Tax Calculation parameters

In the Tax module activate the **advanced tax calculation**, configure and make the necessary configuration.<br/>
When selection the sales tax configuration under “Name”, D365FO will synchronize the setup from the Sales Tax Calculation service with D365FO.<br/>

**In the Tax module, go to Setup and Tax Configuration:**<br/>

![medium](@site/static/img/media/image741.png)

### Prerequisites setup in ExFlow

### General Parameters

ExFlow AP \| Setup \| General parameters<br/>

In the ExFlow AP module, navigate to Setup and select General Parameters. Under **Feature; Management**, activate the Tax Calculation framework.<br/>
Enabling this feature allows you to select the tax calculation framework within the parameters.<br/>

![medium](@site/static/img/media/image743.png)

#### Parameters

ExFlow AP \| Setup \| Parameters<br/>
In the ExFlow AP module, navigate to Setup and select Parameters. Under tab **Sales tax**, activate the Tax calculation framework:<br/>

![medium](@site/static/img/media/image742.png)

- **Tax calculation framework:**<br/>

Enable/disable the framework. If activated, the user can select whether to use standard D365 FO tax setup or send the transaction to the Tax calculation service.

- **Calculation Method:**<br/>

The calculation method lets you decide whether which tax calculation method to use the per legal entity.<br/>

**Standard** – Use D365FO tax setup to calculate sales tax.<br/>

**Microsoft Sales Tax Calculation Service** – Use tax calculation service to calculate sales tax.<br/>

- **Display method:**<br/>

The display method in ExFlow controls how changes to a transaction, which could trigger a sales tax update, are indicated.<br/>
For example, if a user modifies the amount on an invoice line, ExFlow can indicate that the sales tax might be impacted, although it hasn’t yet been sent to the tax calculation service.<br/>

**Available with calculation method “Standard**<br/>

<u>Standard</u>
<br/>

If the display method is set to **Standard**, ExFlow will mirror how journals (such as invoice registers or invoice journals) in standard D365FO display sales tax.<br/>
In this mode, the sales tax is not visible at the header or line level but can be accessed by selecting Sales tax and entering the sales tax form.<br/>

**This method is recommended if performance is a priority.**<br/>

![medium](@site/static/img/media/image744.png)

<u>Indicate change</u>

The display method **Indicate change** will give the user a visual representation in the form that there has been made a change that might affect the sales tax calculation.<br/>
The visual representation is a yellow exclamation mark. It appears at the header level, line level, or both, depending on where the change was made on the invoice.<br/>

The user can manually trigger an update of the sales tax on the invoice by:<br/>
-   Validating the invoice.
-   Simulate posting.
-   Opening the sales tax form on header/line – level.<br/>

![medium](@site/static/img/media/image745.png)

<u>Immediately</u>
<br/>

In this mode, the sales tax is calculated instantly based on inputs at the header and line levels.<br/>
For example, changes to the amount, sales tax group, item sales tax group, or sales tax code will immediately trigger a sales tax calculation for the invoice line.<br/>

**Available with calculation method “Microsoft Sales Tax Calculation**<br/>

<u>Standard</u>
<br/>

If the display method is set to Standard, ExFlow will mirror how journals (such as invoice registers or invoice journals) in standard D365FO display sales tax. In this mode, the sales tax is not visible at the header or line level but can be accessed by selecting Sales tax and entering the sales tax form.<br/>

![medium](@site/static/img/media/image746.png)

<u>Indicate change</u>

<br/>
The display method “Indicate change” will give the user a visual representation in the form that there has been made a change that might affect the sales tax calculation.<br/>

The user can manually trigger an update of the sales tax on the invoice by:<br/>
-   Validating the invoice.
-   Simulate posting.
-   Opening the sales tax form on header/line – level.<br/>

![medium](@site/static/img/media/image747.png)

### Tax Calculation influence fields

The main purpose of the Tax Calculation fields is to allow users to customize which fields should trigger a sales tax calculation. The setup includes a set of predefined, mandatory fields, but users can add additional fields for ExFlow to consider when determining if a sales tax recalculation is needed on Import and Document Form.

These additional fields can be specified for both header and line levels.<br/>

![medium](@site/static/img/media/image748.png)

For example, if you want changes to the Invoice Type field to trigger a sales tax calculation update, you can add Invoice Type to the Tax Calculation Influence field setup. By doing so, any modification to the Invoice Type on a transaction will prompt ExFlow to recalculate the sales tax, ensuring that adjustments to critical fields automatically reflect in the tax calculations.<br/>

![medium](@site/static/img/media/image749.png)

When used alongside Indicate Change, ExFlow will display a visual alert to signal that the sales tax may be impacted by changes to the Invoice Type.<br/>

![medium](@site/static/img/media/image750.png)

### Override sales tax

On the Import form there is a new field called “Override sales tax”.<br/>
This field allows the user to **override the sales tax on the invoice**, meaning ExFlow will send the invoice to the Tax Calculation Service but will disregard the applicability rules defined there.<br/>
Instead, ExFlow will rely solely on the intersection of the Sales tax group and Item sales tax group.

<br/>
![medium](@site/static/img/media/image751.png)

