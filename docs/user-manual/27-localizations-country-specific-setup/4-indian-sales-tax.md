---
title: Indian Sales Tax GST
sidebar_position: 4   
hide_title: true
---
## Indian Sales Tax GST <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

GST is known as the Goods and Services Tax. It is an indirect tax which has replaced many indirect taxes in India such as the excise duty, VAT, services tax, etc. The Goods and Service Tax Act was passed in the Parliament on 29th March 2017 and came into effect on 1st July 2017. In other words, Goods and Service Tax (GST) is levied on the supply of goods and services.
Goods and Services Tax Law in India is a comprehensive, multi-stage, destination-based tax that is levied on every value addition. GST is a single domestic indirect tax law for the entire country. Before the Goods and Services Tax could be introduced, the structure of indirect tax levy in India
was as follows:

![Small](@site/static/img/media/image279.png)

Under the GST regime, the tax is levied at every point of sale. In the case of intra-state sales, Central GST and State GST are charged. All the inter-state sales are chargeable to the Integrated GST.

**Objectives of GST**
To achieve the ideology of ‘One Nation, One Tax’
GST has replaced multiple indirect taxes, which were existing under the previous tax regime. The advantage of having one single tax means every state follows the same rate for a particular product or service. Tax administration is easier with the Central Government deciding the rates and policies. Common laws can be introduced, such as e-way bills for goods transport and e-invoicing for transaction reporting. Tax compliance is also better as taxpayers are not bogged
down with multiple return forms and deadlines. Overall, it’s a unified system of indirect tax compliance.

To subsume a majority of the indirect taxes in India
India had several erstwhile indirect taxes such as service tax, Value Added Tax (VAT), Central Excise, etc., which used to be levied at multiple supply chain stages. Some taxes were governed by the states and some by the Centre. There was no unified and centralized tax on both goods and services. Hence, GST was introduced. Under GST, all the major indirect taxes were subsumed into one. It has greatly reduced the compliance burden on taxpayers and eased tax administration for the government.

To eliminate the cascading effect of taxes
One of the primary objectives of GST was to remove the cascading effect of taxes. Previously, due to different indirect tax laws, taxpayers could not set off the tax credits of one tax against the other. 
For example, the excise duties paid during manufacture could not be set off against the VAT payable during the sale. This led to a cascading effect of taxes. Under GST, the tax levy is only on the net value added at each stage of the supply chain. This has helped eliminate the cascading effect of taxes and contributed to the seamless flow of input tax credits across both
goods and services.

To curb tax evasion
GST laws in India are far more stringent compared to any of the erstwhile indirect tax laws. Under GST, taxpayers can claim an input tax credit only on invoices uploaded by their respective suppliers. This way, the chances of claiming input tax credits on fake invoices are minimal. The introduction of e-invoicing has further reinforced this objective. Also, due to GST being a
nationwide tax and having a centralized surveillance system, the clampdown on defaulters is quicker and far more efficient. Hence, GST has curbed tax evasion and minimized tax fraud from taking place to a large extent.

To increase the taxpayer base
GST has helped in widening the tax base in India. Previously, each of the tax laws had a different threshold limit for registration based on turnover. As GST is a consolidated tax levied on both goods and services both, it has increased tax-registered businesses. Besides, the stricter laws surrounding input tax credits have helped bring certain unorganized sectors under the tax net.
For example, the construction industry in India.

Online procedures for ease of doing business
Previously, taxpayers faced a lot of hardships dealing with different tax authorities under each tax law. Besides, while return filing was online, most of the assessment and refund procedures took place offline. Now, GST procedures are carried out almost entirely online. Everything is done with a click of a button, from registration to return filing to refunds to e-way bill generation. 
It has contributed to the overall ease of doing business in India and simplified taxpayer compliance to a massive extent. The government also plans to introduce a centralized portal soon for all indirect tax compliance such as e-invoicing, e-way bills and GST return filing.

An improved logistics and distribution system
A single indirect tax system reduces the need for multiple documentation for the supply of goods. GST minimizes transportation cycle times, improves supply chain and turnaround time, and leads to warehouse consolidation, among other benefits. With the e-way bill system under GST, the removal of interstate checkpoints is most beneficial to the sector in improving transit and destination efficiency. Ultimately, it helps in cutting down the high logistics and warehousing
costs.

To promote competitive pricing and increase consumption
Introducing GST has also led to an increase in consumption and indirect tax revenues. Due to the cascading effect of taxes under the previous regime, the prices of goods in India were higher than in global markets. Even between states, the lower VAT rates in certain states led to an imbalance of purchases in these states. Having uniform GST rates have contributed to overall
competitive pricing across India and on the global front. This has hence increased consumption and led to higher revenues, which has been another important objective achieved.

### Advantages of GST
GST has mainly removed the cascading effect on the sale of goods and services. Removal of the cascading effect has impacted the cost of goods. Since the GST regime eliminates the tax on tax, the cost of goods decreases.
Also, GST is mainly technologically driven. All the activities like registration, return filing, application for refund and response to notice needs to be done online on the GST portal, which accelerates the processes.

### Tax components
**GST- Goods and Service tax**
Goods and Services Tax is a destination based multistage, comprehensive tax levied at each stage of value addition. Having replaced multiple indirect taxes in India. GST is a tax on goods and services with comprehensive and continuous chain of set-off benefits up to the retailer level.

It is essentially a tax only on value addition at each stage throughout supply chain, and a supplier at each stage is permitted to set-off this through a tax credit mechanism, the GST paid on the purchase of goods and services. Ultimately, the burden of GST is borne by the end-user who basically consume the items.


**SGST- State Goods and Services Tax**
SGST is charged by state government on intra-state goods and service transactions. The revenue collected though state goods and service tax are earned by the state government where the transaction is made.
In case of union territory like Kashmir, Andaman and Nicobar Islands or Chandigarh, in this situation SGST will be replaced by UGST (Union territory good and services tax).


**CGST- Central Goods and Services Tax**
CGST is charged by the central government on intra-state goods and service transactions. The central government collects the revenue generated through central goods and service tax.


**IGST- Integrated Goods and Services Tax**
Integrated goods and service tax is the tax charged on inter-state goods and service transactions. IGST tax also applicable on import and export as well. Under IGST, the taxes charged are shared by both central and state. The SGST part of the tax goes to the state wherein the goods and services are consumed.

For more detailed description see https://cleartax.in/s/gst-law-goods-and-services-tax.

### Limitation in ExFlow Solution

- At the time being ExFlow does not have an automated solution for purchase order
invoices containing petroleum and liquor items. It is still possible to process these invoices through ExFlow, but the sales tax calculation needs to be performed manually at the posting stage.


- The invoice register journal and approval journal needs to be set excl. sales tax. 

- Due to a bug in Microsoft standard Dynamics 365FO GST sales tax calculation for
charges on invoice header are not supported. The sales tax needs to be allocated down to the invoice lines even for non-item charges. This allocation process is automated in ExFlow.

- Due to a bug in Microsoft standard Dynamics 365FO reverse charge for GST is not
correctly reversed at time of approval journal posting. A balance error will occur. This issue has been reported to Microsoft and a fix is available from ver. 10.0.24 and backported to over. 10.0.22 and 10.0.23.

- Due to a bug in Microsoft standard Dynamics 365FO it is not possible in approval
journal to connect invoice lines to project lines. This issue has been reported to Microsoft, but no fix will be done. If using the project module in Dynamics 365FO the workaround is to use purchase order to connect the project information.

- Due to a bug in Microsoft standard Dynamics 365FO it is possible in approval journal to set TDS/TDC codes for withhold tax but functionality for using the codes is not implemented. This issue has been reported to Microsoft, but no fix will be done. The workaround here is to set the TDC/TDC code in invoice register journal and then correct the withhold tax in a ledger adjustment journal after final posting.

### Setup 

#### Standard D365 FO
India Goods and Services Tax is quite complex to set up in standard D365 FO. Before configuring ExFlow make sure that standard configuration has a correct setup and working correctly. Make sure the standard invoice register/invoice approval process is working and that the GST calculation gives the correct results. 

For more detailed information see Microsoft Docs:

https://docs.microsoft.com/en-us/dynamics365/finance/localizations/apac-ind-gst.

*Also note that the below documentation around India sales tax and ExFlow is not covering standard ExFlow setup, configurations and processes.*

#### ExFlow General parameters
When reporting the GST to the tax authorities you need to export a csv file with the GSTR transactions. Since in standard D365 FO invoice register/invoice approval process there will be mix of transactions in the file from both the preliminary posting and the final posting it is needed to make sure that only final posting transactions are put in the file. 

This is done by switching on a parameter in ExFlow to have the csv file to only include the final posting transactions (invoice approval and purchase order invoice transactions). 

The general parameters form module path: ExFlow | Setup | General parameters and tab Localizations.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image280.png)

#### ExFlow Parameters
When pre-calculating sales tax based on GST fields on invoice line level in ExFlow forms (ExFlow coding dimensions for India sales tax) it is needed to set up an extra invoice register journal. 

This journal should have the same set up as the ordinary used invoice register journal with its own voucher series. Make sure the journal is set up excl. tax. This journal will be kept open and cannot be posted and the only purpose is to have a temporary journal object when calculating India sales tax in ExFlow forms.

When using the Bill of entry functionality, the parameters “Tax calculation – lines using BOE” and “Use specific packing slip connection” must be enabled.

**ExFlow | Setup | Parameters and tab Sales tax.**
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image281.png)

**ExFlow | Setup | Parameters and tab Purchase order**
![Medium](@site/static/img/media/image483.png)

#### Configuration of India Sales Tax fields
To be able to adjust sales tax on invoice line level it is needed to switch on a set of India sales tax fields. This coding fields will then be possible to adjust in ExFlow import and document form for the accounts payable and also in the web approval app and in the invoice approval form inside D365 FO for the approvers. 

These fields are set up in the Configuration form:

**ExFlow | Setup | Configuration.**

- Select Add/Delete Column

![Medium](@site/static/img/media/image282.png)

- Under "Dimension properties" and then "Localizations" there is a field group named India. Switch on all of these field and then click Finish button on the bottom right. You will then return to the configuration form. Make sure sort order and other configuration is correct before leaving the this form.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image283.png)

## Capturing invoice data
Invoice amount should be captured as gross amount (incl. tax) and the actual sales tax amount should be captured just as usual working with ExFlow. Upon import to ExFlow import form the net amount will be calculated by ExFlow and put as the journal amount since the invoice register journal should be set up excl. tax. 

There is no difference in ExFlow with India sales tax solution in what invoice fields that should be captured except for.

**Limitations**
It is not possible to capture any India sales tax coding dimensions neither on invoice header level nor on invoice line level. This means that the user manually needs to set all the necessary GST fields on both header and line level in ExFlow.

## Import form
When the invoice has been imported to ExFlow import form some new fields have been added to the import form:

A new column named India together with some new fields has been added:
- **Scanned Invoice amount**: The scanned/captured gross invoice amount (not editable) to show the user what the actual gross amount is since the journal amount you work with is a net amount.

- **Scanned tax amount**: The scanned/captured gross invoice sales tax amount (not
editable) to show the user what the actual tax amount on the invoice is since the sales tax amount is calculated and adjusted in the Tax information form.

- **Manual posting**: If more complicated tax calculation is needed to manually be set at time of posting the user can tick this field and this invoice will not be included in the batch posting. This is valuable for instance if charges need to be manually handled for tax calculation reasons.

- **TCS group and TDS group**: Fields used in India for withhold tax calculation
Assessable value: The taxable value used as a base for tax calculation and is the value of the goods/services + basic customs duty + any other duty chargeable on the goods/services. In most of the cases of regular normal trade, the invoice value will be the taxable value.

- **Tax information entered**: A hidden checkbox field (not editable) that is ticked if the user has opened the tax information form and taken the decision if tax needs to be calculated and if so how to calculate tax.

- **Foreign vendor**: If the vendor on the invoice is a foreign vendor this field will be ticked (not editable and only shown if only shown if purchase order invoice).

- **Import order**: Is ticked if the connected purchase order on the invoice header is an import order (not editable and only shown if purchase order invoice).

![Medium](@site/static/img/media/image284.png)

### India sales tax fields on invoice lines
When calculating sales tax on invoice header in ExFlow the standard Tax information is used. In standard Dynamics 365FO you only have the possibility to have a total tax calculation on invoice header level. 
After the invoice has been invoice register posted, you might need to split the tax on several invoice lines with their own sales tax calculation. 
This is normally done manually in the invoice approval journal for cost invoices. 

To be able to automate the process each invoice line in ExFlow can hold its own sales tax information which later at final posting when fetching the voucher will be automatically copied to the approval journal and then have each line calculated
for sales tax. This allows for batch posting without manual interference at final posting. 

Each sales tax coding fields has the same lookup as the standard Tax information form.

![Medium](@site/static/img/media/image285.png)

### Menu items and buttons - Invoice header
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image286.png)


**Tax information:** Opens the standard India Tax information form where the tax fields are set to calculate tax on invoice header level.

**Withholding tax:** Opens the standard India Withholding tax form showing transactions if withhold tax are used on the invoice.

**Tax document:** Opens the standard India Tax document form where the tax components and the calculated tax are shown on invoice header level. It is also possible to adjust the tax here.

**Tax calculation lines:** Shows an ExFlow form where the tax calculation on each invoice line is shown. These are only pre calculated values to give the end user information about how the tax will be calculated at final posting. The form also shows scanned amounts and tax amount on the header level to visualize and compare between tax to be invoice registered and the tax to be calculated at final posting.

![Medium](@site/static/img/media/image287.png)

**Copy sales tax dimensions to lines:** Copies all the necessary sales tax fields from the tax information form on header level down to the invoice lines. This feature can be used as a starting point if you have several lines and only need to change one or few of the sales tax fields compared to the tax fields on invoice header level. If you create new lines this will be done automatically. 
If purchase order invoice the tax information on the lines is fetched from the purchase order lines and the attached charges.

**Adjust sales tax:** If having a difference for the actual invoice amount compared with the scanned invoice amount after tax calculation this will automatically adjust the calculated tax in the Tax document form to make the actual invoice amount sum up to the scanned invoice amount.

For purchase order invoices with charge lines, it is possible to decide if the tax calculation of the charge amount should be handled together with the line cost. The user can then update the assessable value manually on the connected invoice lines upon posting. 

Tick/untick the check box for Assessable value in the column INDIA. In most cases this should be set to No to make sure the tax calculation is made upon the HSN code setting on the charge itself.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image288.png)

## Document form
When the invoice has been invoice registered posted from import it is out for approval and can be found in the document form for the accounts payable clerk.

### India sales tax fields on invoice lines
When calculating sales tax on invoice header in ExFlow the standard Tax information is used. In standard D365FO you only have the possibility to have a total tax calculation on invoice header level. After the invoice has been invoice register posted, you might need to split the tax on several invoice lines with their own sales tax calculation. This is normally done manually in the invoice approval journal for cost invoices. 

To be able to automate the process each invoice line in ExFlow can hold its own sales tax information which later at final posting when fetching the voucher will be automatically copied to the approval journal and then have each line calculated
for sales tax. This allows for batch posting without manual interference at final posting. Each sales tax coding fields has the same lookup as the standard Tax information form.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image291.png)

### Menu items and buttons - Invoice header

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image292.png)

**Tax calculation lines:** Shows and ExFlow form where the tax calculation on each invoice line is shown. These are only pre calculated values to give the end user information about how the tax will be calculated at final posting. The form also shows scanned amounts and tax amount on the header level to visualize and compare between tax that has been invoice registered and the tax to be calculated at final posting. If purchase order invoice the tax information on the lines is fetched from the purchase order lines and the attached charges.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image287.png)

For purchase order invoices with charge lines, it is possible to decide if the tax calculation of the charge amount should be handled together with the line cost. The user can then update the assessable value manually on the connected invoice lines upon posting. 

Tick/untick the check box for Assessable value in the column INDIA. In most cases this should be set to No to make sure the tax calculation is made upon the HSN code setting on the charge itself.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image288.png)

### My Vendor invoices form
In my vendor invoices form the approver can handle the invoice and approve/reject/put on hold etc. In this form it is also possible to add or change India sales tax fields. Each sales tax coding field have the same lookup as the standard Tax information form.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image289.png)

### ExFlow Web
In the ExFlow web app the approver can handle the invoice and approve/reject/put on hold etc. In this form it is also possible to add or change India sales tax fields. Each sales tax coding field have the same lookup as the standard Tax information form.

![Medium](@site/static/img/media/image290.png)

## Process/Functions

### Process cost invoices with India sales tax
This example shows a scanned invoice with captured data and imported into the import form in ExFlow. The scanned invoice amount is 236.00 INR and the scanned Sales tax amount is 36 INR.

In the import form the invoice looks like this:

![Medium](@site/static/img/media/image293.png)

The check box Tax information entered is not checked which means that no tax data has been entered and no tax calculation has been done. The field India tax balance shows how much the actual difference is between the scanned tax amount and the calculated tax on the invoice. In this case 36.

To start working with tax, go to menu item General/Tax/Tax information to open the tax information form and enter India sales tax fields:

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image294.png)

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image295.png)

Make sure in this form to always have the field Prices include sales tax set to No -> Click Ok. 

When coming back to the import form the fields "Calculates sales tax amount" and "Actual sales tax amount" is now calculated based on the previous tax fields values in the Tax information form. For more detailed tax calculation information open the "Tax document form" by where you also can make manual tax adjustments. 

Go to menu item General | Tax | Tax document.
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image296.png)

In this example you don’t need to do any changes since the calculated tax amount is exactly the same as the scanned tax amount and the tax components and rate seems OK. Close the form.

Now the calculated tax on the invoice header is ready and it would be OK to post. In this case the accounts payable clerk will do the job to split the invoice into two cost lines and have tax calculated on each line based on different HSN codes before it is sent out on approval, so he/she enters the India sales tax fields on the two lines.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image297.png)

Now it is possible to see what the calculated tax amount on each line will be at time of final posting in the approval journal by opening the form Tax calculation – lines from the General | Tax menu. 

This is used for the purpose of making sure that the calculation on each line is correct and sums up to the tax amount on the invoice header. Please note that it is of course possible, if allowed, for an approver or accounts payable clerk to change the India Sales tax fields later in the process before final posting.

![Medium](@site/static/img/media/image298.png)

- Now post the invoice and send it out on approval.
After the invoice has been approved, the invoice will get fetched into an approval journal.

The two last lines are automatically fetched from ExFlow invoice line, and the India sales tax fields and tax calculation will be done automatically. Upon posting the invoice registered sales tax will be reversed and instead the final tax amount will posted based on the tax calculation on each line. 

If needed it is possible to adjust sales tax manually by using the forms "Tax information" and "Tax document" but for automation reasons it´s better to setup ExFlow in a manner that tax is calculated based on ExFlow invoice line data. If the sum of the tax amount on all lines does not sum up to the tax amount from invoice register ExFlow will automatically adjust the tax to clear the difference based on tax difference tolerance level set up in ExFlow.

### Process Purchase order invoices with India sales tax
This example shows a scanned invoice with captured data and imported into the import form in ExFlow. The scanned invoice amount is 200.00 INR and the scanned sales tax amount is 31.51 INR. 
This invoice is connected to a purchase order with one line with line amount 119.49 INR with India sales tax set on the line. A charge of 50.00 INR is captured and added on the invoice.

In the import form the invoice looks like this:

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image299.png)

Since this is a purchase order the India sales tax fields on line level will be fetched from the purchase order lines and charges. The process for setting tax information fields on header level is the same for purchase order invoices and cost invoices so use the Tax information form for setting the sales tax fields and the use the Tax document form for detailed view of the tax calculation and if tax adjustment is needed.

Just as for cost invoices it is possible to see what the tax calculation will be at the final purchase
order invoice posting by opening the Tax calculation – lines form.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image300.png)

In this example the calculated total lines tax amount sums up to the actual tax amount on the invoice header since the charge on the ExFlow lines is connected to the purchase order line and the sum of calculated tax amount on the lines is 30.51 INR.

- Now post the invoice and send it out on approval.
- After the invoice has been approved, the invoice can be finally posted in batch or manually via the Document form. The posting pending invoice form totals shows that the sales tax posted for the invoice will be 30.51 INR.

![Medium](@site/static/img/media/image301.png)

### Process Purchase order invoices using Bill of entry for foreign vendors
Below example shows an invoice with a foreign vendor where the invoice is connected to a purchase order with a bill of entry. The amount and purchase price of the item line in the invoice is retrieved from the created bill of entry and not the connected purchase order line. Exflow parameters “Tax calculation – lines using BOE” and “Use specific packing slip connection” must be enabled.

Below purchase order line consists of item M0001, Quantity: 5, Unit price: 100 USD, Assessable value in the accounting currency 26,000 INR.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image484.png)

Enter necessary Tax information like the location and HSN code:
![Small](@site/static/img/media/image485.png)

#### Create a bill of entry journal

1. First it is necessary to complete an invoice registration and then generate the bill of entry. For invoice registration it is important to choose the “import invoice number” and then Save and Update.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image486.png)

2. To generate the bill of entry, choose the “Import invoice number”, “Number”, “Term of payment” and “Port Id”. Also, update the assessable value if needed. 

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image487.png)

3. Generate a receipt using bill of entry quantity for the purchase order and import the purchase order invoice to exflow import form.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image488.png)

**Invoice in import form**
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image489.png)
Packing slip connect status is "Connected" and "Connected quantity" is what is previously chosen in Bill of entry.

4. Open Tax calculation – lines using BOE under General tab.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image490.png)

Purchase base amount is retrieved from BOE and not directly from the purchase order lines. 

5. Post the invoice and send it out on approval. After the invoice has been approved, the invoice can be finally posted in batch or manually from exflow document form. Once the invoice has been invoiced (final posted), it also appears as the related invoice on the Bill of entry journal.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image491.png)

### Charges handling
There is a limitation in standard D365FO regarding India sales tax together with charges on purchase order. If connecting the charge on invoice header level, no tax calculation will be made for the charge cost. The solution here is to always allocate all charges on the invoice header level down to the invoice lines and make sure that the assessable value check box on ExFlow charge line is set to No.

The charge cost will be allocated to the invoice lines upon posting and tax will be calculated based on the HSN code on the charge. If assessable value is set
to Yes, no tax will be calculated on the charge cost, but you can manually increase each lines assessable value with the charge cost to have tax calculated with the line cost plus the charge cost based on the tax fields setting on the line. In future releases we plan to have the assessable value to be increased automatically upon posting.

In ExFlow all charges can be allocated automatically at time of purchase order invoice posting by setting up for which vendors you want the allocation to be made. 

This is done in the form Setup for automatic postings: 
ExFlow | Setup | Resources | Setup for automatic postings and the tab
Allocate charges.

We recommend to setup to allocate to all lines and for all vendors, just as below image:

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image302.png)

If no allocation is made the charge cost will be put on the invoice header and will never be part of any tax calculation.

### Withholding tax
It is possible in ExFlow to use withholding tax in import form. The withholding tax transactions is decided by the TDS/TCS code on the invoice and is inherited from the vendor and can be changed in the import form.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image303.png)

For cost invoices in standard D365FO there is a limitation in the TDS/TCS functionality making it not possible to set TDS/TDC line by line in approval journal. That means you need to have this set from the start in import form and if adjustments needs to be done after final posting, this is done in an Adjustment journal. 

For purchase order invoices the recommendation is to not set TDS/TDC code in import form and instead let each purchase order line TDS/TCS code decide the withhold tax at time of final posting.

For more information about the withhold tax to be posted, please open the Withholding tax form: 

**General | Tax | Witholding tax**

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image304.png)

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image305.png)

### Import Order
When working with purchase order invoices against a foreign vendor with import order no tax calculation should be made in the import form. The Tax menu items are disabled:

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image306.png)

If you use Bill of entry and want to keep track of what have been registered in the customs you need to switch on the “Post invoices against specific product receipts” functionality. You also need to switch on a new parameter for Tax calculation – lines using BOE.

When working with import orders you can connect a packing slip to a Bill of entry. This is done in the packing slip form on the import line.
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image492.png)

There is new form under Tax, “Tax calculation – lines using BOE” that now will show the tax calculation using the Bill of entry connected transaction.
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image493.png)


### Automatic adjustment of sales tax at final posting
In ExFlow there is a feature to handle the sales tax difference between the invoice registered tax amount and the actual sales tax at time of final posting. 

The tax difference is distributed between the cost lines to make the actual sales tax to sum up to the invoice registered tax amount. 
The tolerance levels for how big the difference can be to be automatically distributed is set by general parameters in the parameters form and specific table/group/all settings in Setup for automatic postings and the tab Adjust VAT in Invoice approval journal. 

**Please note that the adjustment of sales tax is also done for purchase order invoices.**



