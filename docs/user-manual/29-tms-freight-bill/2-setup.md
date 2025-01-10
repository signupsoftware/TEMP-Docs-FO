---
title: Setup
sidebar_position: 2
hide_title: true
custom_edit_url: null
---
## Setup <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

**NOTE** Support for TMS is only applicable for the Direct posting process

### Example of Freight Bill Setup in D465FO

**Transportation management parameters**
Transportation management | Setup | Transportation management parameters<br/>

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image633.png)

If using batch job from ExFlow AP | Periodic tasks | TMS freight invoice
*Performs approval process of fully matched and reconciled ExFlow TMS freight invoices*.<br/>
Approve batch will create invoice journal and post invoice journal if parameter for "Post journal field" is set to `Yes`.<br/>

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image639.png)

**Freight bill matching criteria:**<br/>
Transportation management | Setup | Freight reconciliation | Freight bill type<br/> 
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image634.png)

**Audit master to setup tolerances:**<br/> 
Transportation management | Setup | Freight reconciliation |Audit master<br/> 
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image635.png)

**Reconciliation resons:**<br/>
Transportation management | Setup | Freight reconciliation | Reconciliation resons<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image636.png)

**Freight bill type assignments:**<br/> 
Transportation management | Setup | Freight reconciliation | Freight bill type assignments<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image637.png)

### Setup in ExFlow AP
ExFLow AP | Setup | Parameters | Posting logic | Direct posting |

ExFlow TMS freight invoice related functionality is available only if ExFlow AP for the Direct posting process.<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image638.png)

For executing Freight bill in ExFlow: process a cost invoice with Load ID to get all freight bill lines. There is a button added to fetch freight bill lines from Load ID in Import form. Go to action menu in Import form -> Actions->Retrieve from freight bill.

#### Batch jobs
ExFlow AP | Periodic tasks | TMS Freight invoice<br/>
- Create: This batch creates the Freight bill invoices based on the approved invoice. Use filter or do batch processing.<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image654.png)

- Match: This batch do the match between Load id and ExFlow invoice with Freight bill created by ExFlow invoice. Matching will fail if the Load and ExFlow invoice doesn’t match according to setup in tolerances and matching criteria, and then user needs to perform the reconciliation manually in Freight bill invoice.<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image655.png)

- Approve: This batch does the approval of the Freight bill.<br/> 
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image656.png)

- Post: this batch creates, match, approve and post at the same time but if any of the above-mentioned step fails then user must do the reconciliation and approval manually.<br/> 
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image657.png)