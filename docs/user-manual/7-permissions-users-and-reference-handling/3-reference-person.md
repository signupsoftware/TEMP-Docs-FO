---
title: Reference person
sidebar_position: 3
hide_title: true
---
## Reference person <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

ExFlow \| Setup \| References \| Reference person

**Reference Person set up with Worker**

Value in field "Reference" is normally fetched during data capture when importing the invoice. The value is used for e.g., finding approvers and connect to approver flow, fetch posting proposals or match with agreements.

A reference can be alphanumeric values, so you can for example have a reference with the number "12345" corresponding to the approver "AXEDU01". In conjunction with the settings in the "Posting proposal" form, it is possible to pre-code the invoice upon import.

Can also be configured in combination with a specific vendor account.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image29.png)

**Reference Person set up with a vendor account.**

Suggest approvers based on Reference should first look if there is a combination of reference and vendor in ExFlow setup that match the invoice. If the match is found, then approver is suggested according to the Worker from the Reference person setup.

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image30.png)

![](@site/static/img/media/image31.png)

If no match is found ExFlow looks if there is a reference without a vendor and in that case, select a related worker.

![](@site/static/img/media/image32.png)

![](@site/static/img/media/image33.png)

