---
title: Suggest approvers with logging
sidebar_position: 4
hide_title: true
---
## Suggest approvers with logging <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

When running "Suggest approvers with logging" below form opens.

![A screenshot of a computer Description automatically generated](@site/static/img/media/image96.png)

| Fields (Upper pane) - Steps               |
|:-|:-|
| Assignment type                            | What assignment type is the value retrieved from                                    |
| Participant token                          | Type of step in the workflow i.e., Condition, Reference, Previous approver          |
| Step                                       | ID number                                                                           |
| Step hit                                   | If the condition is true= "Hit" or false= "No hit"                                  |
| Approver                                   | Which approver has been selected by the advanced workflow                           |
| Step name                                  | Name of the step in the advanced workflow                                           |
| Workflow condition                         | What condition has been executed, or if set in the workflow, "Always run this step" |
| Condition is true                          | If the condition is true or not                                                     |
| Hierarchy name                             | Name of position hierarchy that has been used                                       |
| Hierarchy                                  | Which advanced workflow hierarchy has been used                                     |
| Workflow starting point                    | The first approver chosen in the workflow                                           |
| Workflow hierarchy stop condition identity | What stop condition has been used                                                   |
| Policy name                                | Name of signing limit policy                                                        |
| Approval authority basis                   | Based on what authority has the approval been set                                   |
| Invoice amount                             | Amount on the invoice                                                               |
| Line amount                                | Amount on the line                                                                  |

The lower pane is only valid for position hierarchy.

| Fields (Lower pane) - Details |
|:-|:-|
| Approver                       | Name of the approver                                                               |
| Position                       | Number of the approver's position                                                  |
| Description                    | Description for position                                                           |
| Job                            | Job                                                                                |
| Parent                         | Parent for position                                                                |
| Description                    | Description parent's position                                                      |
| Signing limit in currency      | Signing limit in currency                                                          |
| Limit currency                 | Limit currency                                                                     |
| Default signing limit          | Default signing limit                                                              |
| Accounting currency            | Account currency in company                                                        |
| Level                          | Displays what level you have "hit". Is used for stopping condition "Manager level" |
