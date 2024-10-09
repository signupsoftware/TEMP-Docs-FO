---
title: Functional process of Split and Validate
sidebar_position: 3
hide_title: true
custom_edit_url: null
---
## The funtional process to handle Split and Validate 
<button class="pdf-button btn_higher" onClick={() => { print(); }}>Save as PDF</button>

### Process to handle Separate Suggest Approver
When the user approves invoice lines in the external web, information is sent to D365FO, the system will then process the lines at a later stage. If this is the last approver on the invoice the invoice status is set to “Unprocessed”.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image227.png)

Every line that is to be run in the “Suggest approver after validate” job, (see below) has been marked with status “Waiting” in the two forms that show ExFlow invoices (Document table list page and Document table).

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image228.png)

### Batch job
The information is used in a batch enabled via a menu item. When run, this menu item will run the “suggest approver” functionality and update the information according to ExFlow standard process, for example if coding of a line has changed and other approvers should be added based on a new dimension value. 
The batch job menu item is called “Suggest approvers after validate”.

![small](@site/static/img/media/image226.png)

If everything is OK, the line will be approved, and no information is written in the approver’s “comment” field. 

If something is not ok, for example that it is “Mandatory” to have 3 approvers and it is only two, the invoice will be “Active”, but the line is put “On hold”. There will then be a message in approvers comment field and in the header you can see “Error at approval” in the Error code field.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image229.png)

If all lines are ok and approved, the invoice will be approved according to ExFlow standard, and the status will change to “Approved” and the invoice can be finally posted.

When the batch job has run and there is an error message the ExFlow chat functionality is used, and the approver will get notified that something is wrong with the invoice that he/she has approved. Depending on how the chat functionality is setup it will also give an alert in D365 Finance and an email might be sent. To setup the ExFlow chat functionality, please see separate white paper. 


The chat message can be seen inside D365FO in ExFlow documents and will also pop up in ExFlow web for the approver.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image230.png)

When the batch job run and find a new matching approval rule, the new approvers will be added to the line and the invoice is released to continue in the approval process. If as in this example above, no more approvers are found. 

The approver that receives the chat message can add one more approver to fulfill the mandatory setting of having more than 2 approvers.
 
Depending on the customers way of working this can also be done in ExFlow Document form and the AP-clerk can add more approvers and restart the invoice to set the approval in motion.

## ExFlow monitoring workspace
ExFlow \| Workspaces \| ExFlow monitoring

In the workspace ExFlow monitoring the AP clerk can see all the invoices that has errors when the batch job “Suggest approvers after validate” has been run. This can also be seen directly in the ExFlow Document form as mentioned earlier however in this workspace only invoices with vendors setup to use this functionality are displayed.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image231.png)

By clicking the invoice number all a new form will open and display all the invoices lines. The actual error message can be read in the “comment” field.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image232.png)

