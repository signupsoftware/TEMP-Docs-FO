---
title: Vendor identifier rules
sidebar_position: 4
hide_title: true
---
## Vendor identifier rules <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

ExFlow \| Setup \| Resources \| Vendor identifier rules

Vendor identifier rules in ExFlow is mainly used if you are not using Vendor upload for ExFlow Data Capture or if you are using another OCR tool to capture your invoice data. Then you may use the captured data on the invoice to map the invoice to the correct vendor in D365FO.

If the Vendor Identification Rules are enabled the vendors could based on the default rules be identified by:

- OrgNum
- VAT number
- FiscalCode
- BankIBAN
- AccountNum
- Bank account
- Locator

There must be an exact match for ExFlow to find the vendor. It is enough to capture one of these fields. VAT number has highest priority. The rules will walk through the Priority and if the first rule gives a unique vendor the logic will stop. Otherwise ExFlow will look into the next rule.

As default you will get seven most common rules already pre-defined in Exflow. You may change the priority of those rules or add/remove/change the rules if required.

*More detailed information is found in the white paper "[Vendor identifier rules in ExFlow](https://support.signupsoftware.com/knowledgebase/article/KA-01315)".*

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image66.png)

