---
title: Functional process of summarized invoices
sidebar_position: 3
hide_title: true
---
## The funtional process to handle summarized invoices <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

The process of working with summarized invoices can seem a bit complex to begin with, however when it is used and up and running the process will be clear and follow a logical process based on how approval of invoice lines is done in ExFlow. The process of a typical invoice is as follows.

Remember that the summarize function is not intended to be used for every invoice and is only beneficial if the customer has cost invoices with many lines, that makes it impossible or at least very hard to work with invoices of a couple of hundred of lines or maybe thousands of lines.

A general note to understand the process if an invoice has several approvers for each summarized line, the batch jobs must run to update the status of the original lines and to do a re-summarize of the lines for the next approver in line. Why this behaviour is needed is for example, if the next approver is not the same for all the lines that the first approver has approved etc.

When working with summarized invoices in Document form list page, be aware of the new status fields in the header; “Summarize”, “Summarized status” and “Unprocessed lines”. They will give valuable information on invoice process stages and can also be used to filter to see if for example any invoices are summarized or has unprocessed lines.

### Step by step

1. Import of an invoice in ExFlow import form.
2. The invoice is recognized as an invoice that should be summaried.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image211.png)

3. If the “simulate” functionality is set to yes in the “Document summarize settings” an excel attachment will be attached to the invoice displaying how the summarized lines will look like when the invoice is sent out for approval. The excel attachment can also be created manually in ExFlow Import form by pushing “Option/Summarize” in the ExFlow menu bar.
4. The AP-clerk codes the invoice lines and apply approvers if they have not been applied automatically.
5. The invoice is posted and is now invoice registered and can be viewed in ExFlow document form.


The Summarize field is ticked and the Summarized status is set to “Confirmed not summarized”. 

Meaning that this invoice will be sent out on approval when the job “Summarize document” has run. 
As seen the lines on Document list page will look like any normal invoice with lines. When the job has run, the status will change to “Confirmed and summarized. This can also be manually triggered via the menu for each invoice, for more information see the section “Document Form”.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image212.png)

6. The invoice is now sent out for approval.
7. The summarized lines can now be approved from ExFloe web application or My vendor invoices inside D365. The only actions that can be done for a summarized invoice is; approve or reject any other actions are disabled. On the lines the only values that can be seen are data that is the criteria for a summarized line. The first line has a criteria to be summarized based on approver and department. 

**My vendor invoices**

![medium](@site/static/img/media/image495.png)

For a detailed look on the invoice lines see the attached Excel document.
Attachment in 'My Vendor invoices'

![medium](@site/static/img/media/image496.png)

![medium](@site/static/img/media/image497.png)


**ExFlow web**
For a detailed look on the invoice lines see the attached Excel document.

![medium](@site/static/img/media/image213.png)

Attachment in ExFlow web

![small](@site/static/img/media/image214.png)

Excel file, consist of three sheets, “Table” that holds invoice header information, “Lines” that display the original lines of the invoice as below and “Summarize” that display’s the summarized lines.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image215.png)


8. The invoice is now approved and if viewed in ExFlow Document form, the approver Axuat05 still has status current. But in the header, it can be seen that the invoice has unprocessed lines. It is now awaiting to be updated via the batch job “Update summarized lines”.  
The batch job will set all the original lines and the invoice to the status approved. If the invoice would have had an approval chain with more approvers the update job would have set that approver to status current, and the invoice would be set to the status “Confirmed not Summarized”. The batch job “Summarize documents” would have created new summarized lines for the next approver in line.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image216.png)

9. The invoice is now read to be finally posted to the general ledger in the invoice approval journal or via the batch job posting approved invoices.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image217.png)


## Document form and summarized invoices
When working with summarized invoices in ExFlow Document form the processes that summarize invoice lines, confirm changes, and create specifications (excel attachments with invoice line details) can all be done manually via the header menu.
An invoice can be set manually to be summarized by setting “Summarize” to Yes if it has not been set automatically by predefined criteria, setup in “Document summarize settings”.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image218.png)

When changes are made to an invoice which is set to be summarized it gets the status “Unconfirmed” which is the same logic used for example purchase order handling in standard D365 FO. 
Why this process is used if an AP-Clerk make changes on the coding for example then the lines needs to be re-summarized again and the invoice should not be available for approval before they have the new summarized lines.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image219.png)

| Filed | Function |
| ---- | ---- |
| Confirm | Confirm, sets the invoice to a ready state to be updated.|
| Summarize | Manually creates the summarized lines based on the original lines.|
| Create specification| Manually creates the excel attachment displaying information about the original invoice.|
| Switch layout | Switch the layout of the display of lines between the summarized lines and the original invoice lines.|

**Summarized line view in ExFlow document form (toggle with switch layout)** 
![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image220.png)

| Filed on line level | Function |
| ---- | ---- |
| Unprocessed | Is ticked if the line is awaiting to be updated by the batch jobs.|
| Number of lines | How many lines that has been summarized.|
| Vendor settings | Which vendor that the rule applies too.|



**Original line view in ExFlow document form (toggle with switch layout)**
![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image221.png)

