---
title: Introduction and Limitations
sidebar_position: 1
hide_title: true
custom_edit_url: null
---
## Introduction and Limitations 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

### Introduction
Approving invoices in the external web can take a long time. This is most often due to the “suggest approver” functionality, when the system tries to create a new approval chain using advanced logic. 
The purpose of this solution is to speed up the handling of invoices in the external web. The solution makes it possible to run the “suggest approver” logic separated from validation when using the web app. The approval workflow will be handled as a separate process in a later stage in the background.


### Limitations in the solution
•	Works only for external web, not “My vendor invoices”.

•	Validation of data (“Negative” workflow ….) is always run.

•	Logic (prepare to create new approval chain) is only running when the user approve lines.

•	When running the new “Suggest approver” functionality other choices in web (Validate, Save,…..) gives no new approval chains. It will be added later in the background.

•	You must turn on two parameters to use the new functionality and setup which vendors that should use the new “Suggest Approver” functionality.


