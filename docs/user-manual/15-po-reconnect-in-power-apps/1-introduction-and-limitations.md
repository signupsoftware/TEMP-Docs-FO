---
title: Introduction and limitations
sidebar_position: 1
hide_title: true
---
## Introduction <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

The document describes the solution of how to work with the external Canvas App PO Reconnect by Signup Software.

### General description 
The purpose of this app is to give the approver of a certain invoice the ability to either change a cost invoice into a purchase order invoice or remap an existing purchase order invoice to other purchase order lines. To be able to change or reconnect an invoice, the active user must be an approver at least on one of the invoice lines.
The functionality of the PO Reconnect application will be described below but in short summary it has the same abilities to change an invoice as in ExFlow Document form as long as you are the current approver.
The PO Reconnect app is an external app created in Power Apps and is accessible via a link provided by your local IT. The system is connected directly towards your D365 Finance application.

### Objectives Of PO Reconnect
This app is built upon the requests received during the years of the ability for an approver to change cost invoices into purchase order invoices and to be able to change existing invoices connected towards purchase order lines. This has not before been supported either in the ExFlow web or in the approval framework inside D365 Finance.

## Limitations in ExFlow solution

- Working with procurement as a line and override charge dimensions is not supported.
- Functionality for use specific packing slip connection is not supported in this version.
- Line item charges is not supported.
- Override purchase tax is not supported.
- Information about line sales tax calculation is not supported.
- It is not supported to approve or reject invoices inside this power apps in this version.
- It is only possible to change invoices where you as an approver is current on at least one line.
- Only purchase order invoices can be changed, no accounting on a ledger invoice can be modified, however cost invoices can be changed to become a purchase order invoice.
