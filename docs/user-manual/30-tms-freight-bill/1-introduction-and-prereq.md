---
title: Introduction and Prerequisites
sidebar_position: 1
hide_title: true
custom_edit_url: null
---
## Introduction <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

:::info Support for TMS Freight bill is **only applicable for the Direct posting process**
:::

#### The freight reconciliation process in D365FO
Freight rates are calculated by the rate engine that is associated with the relevant shipping carrier.<br/> 
When a load is confirmed, a freight bill is generated, and the freight rates are transferred to it. The freight rates are apportioned as miscellaneous charges to the relevant source document (purchase order, sales order, and/or transfer order), depending on the setup that is used for the regular billing process.<br/>
The freight reconciliation process (which is also known as the matching process) can start as soon as the freight invoice arrives from the shipping carrier. The invoice can be received electronically or on paper. If the invoice is received on paper, you can generate an electronic invoice by using the freight bill as a template.

![small](@site/static/img/media/image632.png)

:::info To find more information https://learn.microsoft.com/en-us/dynamics365/supply-chain/transportation/reconcile-freight-transportation-management
:::

### Prerequisites
Setup the Freight bill functionality in D365FO find more information on Microsoft Learn.

**Useful links**<br/>
https://learn.microsoft.com/en-us/dynamics365/supply-chain/transportation/tasks/set-up-automatic-freight-reconciliation

**Useful video links**<br/>
https://www.youtube.com/watch?v=3Gr5DBC0NS8

https://www.youtube.com/watch?v=5GrPWgLbOZg


