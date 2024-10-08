---
title: Upload vendor information to ExFlow Data Capture (Multiple methods)
sidebar_position: 12
hide_title: true
---
## Upload vendor information to ExFlow Data Capture (Multiple methods) <button class="button" onClick={() => { print(); }} style={{float: 'right'}}>Save as PDF</button>

ExFlow \| Periodic tasks \| Miscellaneous \| Exports \| Upload vendor information to ExFlow Data Capture (Multiple methods)

This job updates the customer's ExFlow Data Capture installation with Vendor data from D365. The purpose of doing this is when an invoice is sent for OCR recognition, the correct vendor is set, and the internal vendor number is included in the XML file that is imported into ExFlow. This means that the vendor identification based on (for example) bank account number or IBAN etcetera is not needed.

Vendor currency is now uploaded to ExFlow Data Capture, even without any address stated on the vendor, which previously was not possible.

### Generate XML file
To generate the XML file containing the current vendor information, users can navigate to;

ExFlow \| Setup \| Import method \| General \| Verify configuration \| Generate vendor xml. 

After the job, a vendor XML file will be generated and downloaded, containing the up-to-date vendor details. Like: “Supplier number”, “Name”, “Organization number", “Currency”, etc.
This downloaded XML file can be used as a draft for future uploads when there are additional vendors to be included. 

Users can utilize this file as a template, making it easier and more efficient to update vendor information in occurring uploads.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image267.png)

"Upload vendor information to ExFlow Data Capture (Multiple methods)," provides users with a convenient way to upload vendor information. This feature offers flexibility by supporting various methods for importing vendor data.
 
The dialog form associated with the "Upload vendor information" has a lookup which allows users to specify their preferred import method. They can choose from the available options which are set up.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image268.png)

