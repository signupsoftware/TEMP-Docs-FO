---
title: Analytics introduction, Pre requesites and setup
sidebar_position: 2
hide_title: true
---
## Introduction <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

The ExFlow embedded analytical reports can be reached from the ExFlow vendor invoice Management Workspace. ExFlow Analytics contains six (6) different pages, one (1) with a general overview of ExFlow invoices, one (1) with cost invoice information and two (2) pages focusing on purchase order invoices and one (1) for approval information data that is connected with the last page “Approver invoices” for detailed information. 
The analytics user should have some basic understanding on how Power BI works and the standard functionality with filtering etc. that can be used within Power BI. 


### Pre-requesites
The reports are getting its data from the cube “ExFlow measures” and are built upon entities based on aggregated measures using entity store, therefore the entity store has to be setup to be refreshed. Note that the standard Power BI functionality such as filtering, drilling down/up, sorting and exporting data etc. is not typically something that is unique for ExFlow Analytics reports and therefore is not subject for support by SignUp Software AB.

-	D365 setup for Power BI.
-	ExFlow Measure enabled in entity store.

### How to enable Exflow measures to refresh data
D365 \| System administration \| Setup \| Entity store

-	Enable Exflow measures
-	Select Refresh 

![Graphical user interface, application Description automatically generated](@site/static/img/media/image245.png)
 
