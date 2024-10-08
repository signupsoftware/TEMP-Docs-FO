---
title: License handling
sidebar_position: 3
hide_title: true
---
## ExFlow License key handling <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

ExFlow is an add-on module for Dynamics 365 for Finance and Operations, which makes it possible in a simple way to approve supplier invoices electronically via web portal or mobile device. ExFlow rationalizes the whole process of handling suppliers’ invoices: scanning (including optional OCR input), electronic approval, posting, history and analytics.
In order to use ExFlow inside D365FO, every Exflow installation needs to have a valid license key. 
This document describes in detail how to obtain and add a license key for ExFlow inside D365FO and on which basis the control and validation of a valid license is made.

### Obtaining a license key
To get a license key, you need to contact your partner or Signup Software and provide the following information:

- Your customer contact information (company name).
- Number of yearly invoices to be processed through ExFlow and the number of approvers that will use ExFlow according to your subscription agreement.
- D365FO serial number for your installation:
    - Open D365FO and click on the “question mark” for Help & Support
    - Press “About” -> select the serial number and copy it
    - Send it as “text” to your partner or SignUp

![small](@site/static/img/media/image402.png)

![small](@site/static/img/media/image403.png)

After we have been provided with this information an ExFlow license key will be sent to the customer or partner via mail, chat or text message. 

**Please note**; that the ExFlow license key is connected to the D365FO serial number and is only valid when used in this particular Dynamics 365 installation.

### Installing the license key
#### Parameters

- Go to ExFlow –> Setup –> General parameters

![small](@site/static/img/media/image404.png)

- The General parameters form is opened. 
- Select tab "Parameters" and the current license key is shown in the License key field. 

**Note**: In a new installation this field will be blank.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image405.png)

- Paste the received license key into the License code field.
- Select the "Save" button and then on "Validate license key button".

**If the license has expired**; the number of invoices has been exceeded or you have the wrong license key for any other reason you will get an error message together with the information that you are running ExFlow in trial mode, see below:

![Graphical user interface, application Description automatically generated](@site/static/img/media/image406.png)

**If the license key is OK**; you will after "Save and Validate license key" get an OK message and the trial message image is removed.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image407.png)

### License information
If you want to have **detailed information about the status** of your license select tab "License information":

| Field | description |
| ---- | ---- |
| Is Valid |  Showing the actual status of your license. If you have a wrong license key or if you have exceeded the number of invoices on a yearly basis this field will be showing No. |
| Valid To Date | Showing an expiration date for when the license is no longer valid. If you have a valid license, more information about the license is shown under License terms and Current value.|
| License terms; Number of invoices | The agreed number of yearly invoices.|
| License terms; Users | The agreed number of ExFlow users.|
| Current Value; Number of invoices | Shows how many invoices that have been processed through ExFlow from today´s date and 12 months back.|
| Current Value; Users |Shows how many Exflow users that have been activated in ExFlow from license activation date.|
|Report | Report that shows a detailed view of how many invoices that has been processed for a certain time period and per legal entity.|

![medium](@site/static/img/media/image408.png)

### Detailed report
- If you want to have a **detailed view of how many invoices** have been processed for a certain time period and per legal entity, **select the button "Report"**. 
- Set your preferred date interval and press OK:
    - You will now see the information about the total number of processed invoices for the selected date interval and to the right you see the number of processed invoices per legal entity.

![medium](@site/static/img/media/image409.png)


### Validation of the license key upon final posting

To make sure that every ExFlow customer is licensed the license terms are validated every time a final posting to General ledger is performed. 
If no valid license key is found an error message is given and the final posting will not be performed. 

#### Your “Valid to date” has NOT expired, but the number of invoices on a yearly basis has been exceeded.

![medium](@site/static/img/media/image410.png)

You **will receive a warning message** whenever you are making a final posting. 
In this message you will see the date when you exceeded the number of invoices and when the license will stop working. 

This means that **you will still be able to do the final posting** of invoices until you have installed a new license key since you will have a **grace period of two months** to install a new license key. 
The grace period is counted from the day you tried to post the 1st invoice that exceeded the agreed invoice volume. See below for warning. (see pic 1.)

**-> You now need to obtain a new license key from your partner or SignUp Software.**

- To proceed with the final posting; Select “OK” and press “Post”. 
- If you are running the final posting by batch the invoice will be posted and you will get the same error message in Action center. (see pic 2.)
 
Pic 1.

![medium](@site/static/img/media/image411.png)

Pic 2.

![medium](@site/static/img/media/image412.png)

#### Your “Valid to date” has expired (The end date of the license has been reached)
**Two scenarios**; number of invoices is exceeded or not exceeded -> Gives the same error messages.

![medium](@site/static/img/media/image413.png)


![medium](@site/static/img/media/image414.png)

You **will receive a warning message** whenever you are making a final posting manually or by batch. 
In this message you will see below text;

*“License value for number of invoices was exceeded on. License will stop working 1900-03-02.”*

This means a hard stop, and you **will NOT be able to do the final posting** of invoices until you have installed a new license key. See pictures below.

**-> To proceed with the final posting; You now need to obtain a new license key from your partner or SignUp Software.**


![medium](@site/static/img/media/image415.png)


![large](@site/static/img/media/image416.png)


![medium](@site/static/img/media/image417.png)


![medium](@site/static/img/media/image418.png)
