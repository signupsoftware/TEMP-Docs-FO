---
title: Action workflow
sidebar_position: 3
hide_title: true
custom_edit_url: null
---
## Action workflow setup 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

Action workflow functionality in ExFlow is an out-of-the box data driven framework developed with the purpose to make it easier to extend ExFlow by making ExFlow reacting on business events performed in ExFlow and then perform actions. There are numerous events that can be triggered such as rejecting an invoice, putting an invoice on hold, importing an invoice etc.<br/>

There are predefined actions that can be performed when such business events are triggered such as sending a mail or a notification, changing data, run functions and more. To set up rules for when a certain action should be run or not are defined in Dynamics 365FO standard workflow engine. That means that it is easy to set up your predefined rules that suits your own processes.<br/>

### ExFlow action import workflow - 
is used when importing invoices and in ExFlow import form.<br/>

### ExFlow action document workflow - 
can be used in ExFlow WEB and in ExFlow document form.<br/>

*More detailed information is found in the white paper "[Action Workflow](https://support.signupsoftware.com/knowledgebase/article/KA-01140)".*


#### Action workflow setup
ExFlow \| Setup \| Workflows \| Action workflow setup \| Action workflow setup<br/>

Normally a workflow is activated in the workflow form, but action workflows are activated through this function in ExFlow and provides the possibility to activate different versions of the same workflow.

![medium](@site/static/img/media/image84.png)

The possible triggers of action workflow are:<br/>
- Import OCR invoices to import form
- Run action workflow in import form (manual activation)
- Run action workflow in document form (manual activation)
- Hold in approval form or web
- Reject in approval form or web
- Forward in approval form or web
- Approve in approval form or web
- Restart approval route in document form
- Cancel invoice
- Change invoice type (head) in document form
- Invoice register posting

#### Workflow action vendor groups
ExFlow \| Setup \| Workflows \| Action workflow setup \| Workflow action vendor groups<br/>

Vendor groups can be set up for action workflows and then used as conditions in the workflows.<br/>

![medium](@site/static/img/media/image85.png)

*More detailed information is found in the white paper "[Action Workflow](https://support.signupsoftware.com/knowledgebase/article/KA-01140)".*





