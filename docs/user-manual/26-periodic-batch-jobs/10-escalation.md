---
title: Escalation
sidebar_position: 10
hide_title: true
custom_edit_url: null
---
## Escalation 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow \| Periodic tasks \| Miscellaneous \| Escalation

Escalation is used if a company would like to send invoices to the next approver if the invoice has not been approved within a certain number of days. To use this functionality, some basic parameters need to be set up in ExFlow parameters \| Approval. See section ExFlow parameters for more details.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image131.png)

|Escalation| **Exflow - parameters - approval*
|:-|:-|
|Escalate to|This functionality is working in combination with the periodic batch job "Escalation". Escalate to this user or user group if no next approver can be found or an extra approver is required. Leave blank if the invoice shall follow the approval chain. **Note**; Advanced approval workflow needs to be active with position hierarchy selected|
|Working days|Number of working days before an invoice is escalated.|
|Extra approver when escalating invoice|If an extra approver always should be added if an invoice is escalated. **Note**; Advanced approval workflow needs to be active with position hierarchy selected|

**Examples of the Escalation parameters are as follows**: <br/>**Example 1**<br/>Escalate to: "Axuat01"<br/>Working days: 5<br/>Extra Approver: Unticked.<br/>Advaced approval workflow active with position hierarchy selected.
- Initial invoice is Axedu03(current) -> Axuat05(none)
  - 5 days without Axedu03 approving - invoice is escalated
  - Axedu03*(approved) -> Axuat05(current)
  - 5 days without Axuat05 approving - invoice is escalated
  - Axedu03(approved) -> Axuat05*(approved) -> Axuat04(current) added from the advanced approval workflow.
  - 5 days without Axuat04 approving
  - Axedu03(approved) -> Axuat05(approved) -> Axuat04*(approved) -> Axuat02(current) added from the advanced approval workflow.
  - 5 days without Axuat02 approving
  - Axedu03(approved) -> Axuat05(approved) -> Axuat04(approved) -> Axuat02*(approved) -> Axuat01(current) Added from parameter setup, escalate to.
  - When the top is reached the escalation will end and leave the last approver as current.

**Example 2**<br/>Escalate to: "Axuat01"<br/>Working days: 5<br/>Extra Approver: Ticked<br/>Advaced approval workflow active with position hierarchy selected.
- Initial invoice is Axedu03(current) -> Axuat05(none)
  - 5 days without Axedu03 approving - invoice is escalated
  - Axedu03*(approved) -> Axuat01(current) added from parameter setup (extra approver ticked) -> Axuat05(none) 
  - 5 days without Axuat01 approving - invoice is escalated
  - Axedu03(approved) -> Axuat01*(approved) -> Axuat04(current) added from advanced workflow -> Axuat05(none). 

**Example 3**<br/>Escalate to: &lt;&lt;blank&gt;&gt;<br/>Working days: 5 days<br/>Extra approver: disabled or enabled.<br/>Advaced approval workflow active with position hierarchy selected.
- Initial invoice is Axedu03(current)
  - 5 days without Axedu03 approving
- Axedu03*(approved) -> Axuat02(current) added from advanced approval workflow.
- When the top is reached the escalation will end and leave the last approver as current.
