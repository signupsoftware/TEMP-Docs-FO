---
title: Introduction and Limitations
sidebar_position: 1
hide_title: true
custom_edit_url: null
---
## Introduction <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

Vendor Collaboration is a standard functionality delivered by Microsoft and is used by customers that wants to communicate with their vendors regarding purchase orders and invoices through a portal.

The functionality is for Customers who works with Purchase order process using Vendor collaboration portal in D365FO and wants to use it in combination with ExFlow.

### Prerequisites
ExFlow web needs to be upgraded to version 2023.5.0.2 (or later).

### Application requirements
The Microsoft Vendor Collaboration Portal must be set up, tested and working before this functionality can be used.

### Limitations
1.	In this release only PO invoices are supported. 

2.	External users must be set up in Azure Active Directory as a guest user. Important that the guest user is hosted in an Azure driven tenant (for example a gmail account is not supported by Microsoft to validate the user). 
