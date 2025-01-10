---
title: Process Freight bill invoice in Exflow
sidebar_position: 3
hide_title: true
custom_edit_url: null
---
## Process Freight bill invoice in Exflow <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

### Create PO for Freight bill

1. Create purchase order in D365FO<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image640.png)

2. In the PO, go to Header tab and fill in required "Mode of delivery" and "Delivery terms"<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image641.png)

3. Click on Action menu "Warehouse" and select "Inbound load planning workbench" to add a create a load for this PO<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image641.png)

4. To create a load for this PO: Click on "Supply and demand" - select "To new load"<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image642.png)

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image643.png)

5. New load is added to the PO<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image644.png)

6. Go to Transport management | Planning | Loads | All loads<br/> 
- Find the newly created load Id for the PO and click on load ID.<br/> 
- To assign route on load. Select Transportation -> Rate route workbench.<br/>

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image645.png)

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image646.png)

7. Always delete the extra line before processing further: This is an issue from standard D365FO. Then go back to previous page of load.<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image647.png)

8. Process inbound shipment<br/>
- Ship and receive
- Inbound shipment
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image648.png)

9. To verify that the Freights have been assigned on this load, click Transportation - Freight bill details<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image649.png)

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image650.png)

### Process Freight bill in ExFlow
For executing Freight bill in ExFlow: process a cost invoice with Load ID to get all freight bill lines. There is a button added to fetch freight bill lines from Load ID in Import form. <br/>

**NOTE:** PO amount is paid separately as ExFlow PO invoice. This invoice is only for paying freight bill.<br/> 

- Import invoice and check that all Fright bill ID lines are imported from Load ID in Import.
- or use action menu in Import form | Actions | Retrieve from freight bill. To load manually.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image652.png)

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image651.png)

- Post and approve this Fright bill invoice and then process Freight bill posting via TMS batch jobs.<br/> 
Posting and approval is same as for PO invoices in the ExFlow process, if the freight invoice is matched with Load id, then the invoice gets auto approved if not matched then approved manually.<br/>
As soon as invoice is approved, the TMS freight invoice process can be done via TMS freight invoice batches.<br/>

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image653.png)

-  Create: This batch creates the Freight bill invoices based on the approved invoice. Use filter or do batch processing.<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image654.png)

- Match: This batch do the match between Load id and ExFlow invoice with Freight bill created by ExFlow invoice. Matching will fail if the Load and ExFlow invoice doesn’t match according to setup in tolerances and matching criteria, and then user needs to perform the reconciliation manually in Freight bill invoice.<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image655.png)

- Approve: This batch does the approval of the Freight bill.<br/> 
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image656.png)

- Post: this batch creates, match, approve and post at the same time but if any of the above-mentioned step fails then user must do the reconciliation and approval manually.<br/> 
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image657.png)


#### If Error when the Freight bill invoice is not matched according to setup and tolerances.<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image658.png)

- In this case user needs to manually reconciliate the freight bill invoice<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image659.png)

- To add line in this form, use key fn+N and select reconciliation reason code, save and go back to perform approval of this reconciliation.<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image660.png)

- Submit for approval<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image661.png)

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image662.png)

- To final post Freight bill invoice: Select Vendor invoice journal.<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image663.png)

- The Invoice journal will open, then select Journal details - Lines.<br/>
- Invoice journal will be open to verify all the lines and other details.<br/>
- Manually post invoice journal.<br/>
- Invoice journal is posted and ExFlow freight invoice status changed to invoiced.<br/>
![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image664.png)


