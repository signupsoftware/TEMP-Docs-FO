---
title: Combination dimension owner
sidebar_position: 3
hide_title: true
---
## Combination dimension owner <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

ExFlow \| Setup \| Workflows \| Advanced workflow setup \| Combination dimension owner

ExFlow advanced workflow combination dimension owner is used in the new advanced approval engine. This is a participant in the advanced workflow that can be used to combine two or more dimensions values on a coded line to give an unique approvers or approvers based on Role/Group. It is possible to have a list of approvers for each dimension combination and all of them should be added as approvers.

*More detailed information is found in the white paper "[Advanced workflow approver on financial dimension](https://support.signupsoftware.com/knowledgebase/article/KA-01088)".*

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image82.png)

| Buttons (Action pane)|
|:-|:-|
| Edit| Edit the setup|
| Save| Save the setup|
| Add Line | Add a new line|
| Delete Line| Delete the selected line |

| Fields|
|:-|:-|
| Dimension 1| The first dimension that should be used for the criteria to evaluate a match.|
| Dimension 2| The second dimension that should be used for the criteria to evaluate a match.|
| User id| The user that should be the approver if a coded line matches the two dimension values combination. |
|Role/Group| Lookup for security roles and user groups that can be added as an approver.|
