---
title: Overview
sidebar_position: 1
hide_title: true
---
## Overview <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

### My vendor invoices
ExFlow for D365 FO is delivered with a workspace named "My vendor Invoices", where approvers are directed when they click on the link received by in the status report email. if the external web is used, they can be directed to that instead. This workspace provides the approvers with an overview of their invoices through a D365 FO dashboard and a summary that is categorized accordingly:

Inbox: Displays invoices from all the companies in D365 F&O where the user is the current approver. The approver looks in his "Inbox" and can choose an invoice to view and work with.
Cost: Displays only cost invoices.
Purch: Displays only purchase order invoices.
Due: Filters for only due invoices
Hold: Displays invoices that are set 'on hold'.
Future: Displays invoices that are expected to be assigned to you in the future if the approval route is not modified.
Recent: All invoices on which approvers have taken action during the past 30 days.
