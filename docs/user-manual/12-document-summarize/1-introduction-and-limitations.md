---
title: Introduction and Limitations
sidebar_position: 1
hide_title: true
custom_edit_url: null
---
## Introduction and Limitations 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

### Introduction
Summarize is a function that should only be used when a customer has invoices with a substantial number of lines. The invoices that are summarized will be possible to approve in "ExFlow web" and "My vendor invoices". 

The purpose of the summarize functionality is to summarize invoice lines that has equal values based on certain criteria and only send out those lines for approval. The system can be setup to trigger on a certain vendor, for example if you know that vendor xx invoices often has more than 500 rows you might consider summarizing those lines based;  Approver, line type and dimension values. 

The benefit of this is of course that the approver will not have to scroll through hundreds or maybe thousands of lines. It will also have a great impact of performance in ExFlow web if an invoice is loaded with 20 summarized lines instead 20 000 lines.


### Limitations in the solution

**Note! ExFlow web version 2022.10.1.4RC (or higher) is required.**

- Purchase order invoices are not supported in the summarized functionality in this first release, will be added later. 

- A summarized invoice can only be Approved or Rejected.

- An approver cannot change the coding of a summarized invoice.

- An approver cannot split invoice lines for a summarized invoice.

- An approver cannot add approvers for a summarized invoice.

- The PO Reconnect app cannot be used for summarized invoices.

- The general parameters for Fast fetch invoice document to web and Fast validate in ExFlow web needs to be switched `ON` (ExFlow – Setup – General parameters – Web setup).
- The general parameter for New Xml serializer needs to be switched `OFF` (ExFlow – Setup – General parameters – Feature management)
