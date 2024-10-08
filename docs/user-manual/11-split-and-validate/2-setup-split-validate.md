---
title: Setup Split and Validate
sidebar_position: 2
hide_title: true
---
## Setup Split and Validate <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

This functionality is not recommended to switch on if your installation does not have heavy workflows or invoices with many rows. For example, when an invoice is approved in ExFlow web and would generate a new approval chain. Since that process can take a long time, it can now be pre-spooned to later after the approval has been done. This functionality can also be setup based on vendors meaning if you know you have 4 vendors with a lot of lines. This functionality can be run for only these 4 vendors and the rest of your invoices are handled as before with immediately response for adding new approval chains.


### Turn on ExFlow parameter
ExFlow \| Setup \| Parameters

There is a parameter flag in the parameters form that turns on the logic to separate the suggest approver function form being instant in ExFlow web to be carried out in the background.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/image222.png)


### Turn on ExFlow web parameter
ExFlow \| Setup \| General Parameters

To be able to use the new functionality the “Fast validate in ExFlow Web” parameter must be enabled.

![Graphical user interface Description automatically generated with low confidence](@site/static/img/media/Image223.png)


### Separate suggest approvers from validate
ExFlow \| Setup \| Resources \| Setup for automatic postings

To use the functionality a record in the tab “Separate suggest approvers from validate” must be created. 
It is supported to use; All, Group and Table (see below for more information about working with Group). 

The purpose of this is to be able to only use the functionality for vendors that has many rows or complex approval chains to save time in performance. 

**Note! To be able to see the tab for Separate suggest approvers from validate the ExFlow parameter for Separate suggest approver must be enabled.** 

![medium](@site/static/img/media/image224.png)


### Vendor groups for separate validate and suggest approver
ExFlow \| Setup \| Resources \| Vendor groups for separate validate and suggest approvers

When using Vendor group for Separate validate functionality, the groups are created in the form "Vendor groups for separate validate and suggest approvers". A group is created and vendors in the lines are added.

### Batch job
ExFlow \| Periodic tasks \| Miscellaneous \| Suggest approvers after validate

When this batch job run, it will run the “suggest approver” functionality and update the information according to ExFlow standard process, for example if coding of a line has changed and other approvers should be added based on a new dimension value. 

![small](@site/static/img/media/image226.png)


