---
title: Chat function
sidebar_position: 4
hide_title: true
---
## Chat function <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

The chat function can be used both in ExFlow web, Approval form and in Document form. Messages are synchronized between ExFlow web and D365 F&O It is meant to be used as communication channel among the users and users can be added to a chat just by adding tag, for example, @*john.smith*. A list of users will be displayed while you start writing. An alert email is sent to the person mentioned in the chat message. The alert function is built upon standard D365 F&O functionality meaning alerts must be setup in standard to work with the chat notifications. Additionally, functionality must be configured in the ExFlow setup:

ExFlow -\> Setup -\> Miscellaneous -\> Notifications -\> Document chat email

*Note: Chat functionality is not available on the confidential invoices*

### Document form

In Document form in the header tab choose "Chat" to be able to read, write a new message or reply to an existing one.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image102.png)

###  Approval form

In Approval form in the header tab choose "Chat" to be able to read, write a new message or reply to an existing one.

![Table Description automatically generated with medium confidence](@site/static/img/media/image103.png)

### ExFlow web

In the ExFlow web interface in the upper header tab choose a message icon to be able to read, write a new message or reply to an existing one.

![Graphical user interface, text, application Description automatically generated](@site/static/img/media/image104.png)

