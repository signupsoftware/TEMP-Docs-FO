---
title: ExFlow LCS Solutions  
sidebar_position: 1
hide_title: true
custom_edit_url: null
---
# ExFlow LCS Solutions
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

Available geographies for Dynamics D365FO: 
https://learn.microsoft.com/en-us/dynamics365/fin-ops-core/dev-itpro/deployment/deployment-options-geo

## ExFlow - LCS Solutions
For Customers and Partners to be able to access and install our solution from Microsoft Lifecycle 
Services for supported versions of Dynamics 365 for Finance and Operations.<br/>

This solution will be updated regularly when new releases are available.<br/>
<br/>
Please have notifications enabled on your Project in LCS for Update notifications.<br/>
This solution includes the latest major release, the latest patch release and the latest patch release 
for the previous major releases, and the latest labels.<br/>

### Version published
EU - 16<br/>
US - 60<br/>
Norway - 15<br/>
South Africa - 6<br/>
Switzerland - 2

### Package information
The latest package available via LCS are currently 2.17.0. This version is built on 10.0.43 and that’s the lowest version it can be installed on.
This version is tested and compatible with 10.0.42 and 10.0.43.<br/>

If you are running earlier versions, they will be compatible, but not fully tested.<br/>
Our recommendations are that you should not be more than 2 versions down, and we always recommend you to update to the latest version.<br/>

We are following Microsoft´s Release Plans, as we always build on the lowest supported version from microsoft at the time of release.<br/>
This is du due minimize the maintenance and number of versions released of the product.<br/>

Next Major Release will be built on 10.0.44.<br/>

### Releases
|Releases||
|---|---|
|Current latest Major Release|ExFlow 2.17.0 for Dynamics 365 10.0.43 and above|
|Current Patch Release(s)|ExFlow 2.16.2 for Dynamics 365 10.0.41 and above<br/>ExFlow 2.16.4 for Dynamics 365 10.0.41 and above<br/>ExFlow 2.16.5 for Dynamics 365 10.0.42 and above|
|Current Labels Release| ExFlow Labels 2.16.0 Dynamics 365 10.0.43 and above| 

| Software Deployable package|Application Version Compatibility| Release Date|
|:-|:-|:-|
|ExFlow 2.17.0 for Dynamics 365 10.0.43 |Operations version 10.0.43 |2025-06-05|
|ExFlow Document Integration 1.2.0|Operations version 10.0.43|2025-06-05|
|ExFlow Labels 2.16.0 for Dynamics 365 10.0.43|Operations version 10.0.43| 2025-06-05 |
|ExFlow 2.16.4 for Dynamics 365 10.0.41 |Operations version 10.0.41 |2025-03-21|
|ExFlow Copilot 1.0.0 for Dynamics 365 10.0.41|Operations version 10.0.41 |2024-12-16 |

|Power BI report model|||
|---|---|---|
|ExFlow Analytics Workspace v47|Operations version 10.0.41|2024-12-16|


### Version Information Updates for your Location
EU: https://eu.lcs.dynamics.com/<br/>
Norway: https://no.lcs.dynamics.com/<br/>
US: https://lcs.dynamics.com/V2/<br/>

|Versions||
|---|---|
|Version 14| ExFlow 2.16.2 for Dynamics 365 10.0.41 and above.<br/>ExFlow Document Integration 1.1.2 for Dynamics 365 10.0.41.|
|Version 13| ExFlow 2.16.1 for Dynamics 365 10.0.41 and above.|
|Version 4| ExFlow 2.13.1 for Dynamics 365 10.0.32 and above.|
|Version 58| ExFlow 2.16.2 for Dynamics 365 10.0.41 and above.<br/>ExFlow Document Integration 1.1.2 for Dynamics 365 10.0.41 |

### Access Information
To be able to access the Solution you need to be added by Signup Software.<br/> 
After that you can install the solution to ANY LCS project you have access to with the selected 
account and EU Location.<br/>

**We recommend that you have two accounts.**<br/>
<u>One service account</u> that you use for the import and installation of the solution for the 
partner/customer. For example: d365admin@signupsoftware.com<br/>
<u>One or several personal account(s)</u>, this to be able to get the notifications for new releases and 
updated versions when they become available.<br/>

:::info **Note!** Only the account importing the solution will be able to apply the packages and access the solution artifacts.<br/>
For other users the solution will say “deactivated”.
:::


**LCS By Microsoft:** https://lcs.dynamics.com/V2/<br/>
1. In LCS, go to the Asset Library of the current project.
2. Go to Solution package.
3. Select Import - Pick “ExFlow - Accounts Payable Automation”.
4. Select “Pick” and click “import”.
5. Agree to the solution providers solution license agreement.<br/>
*You will then find the Artifacts imported in your asset library.*<br/>

**Please note!**
Always copy the package from LCS Solution scope to Project Scope before downloading the 
package.<br/>

![Graphical user interface, application Description automatically generated](@site/static/img/media/image673.png)

This is a new feature from Microsoft since October 2020<br/>
![Graphical user interface, application Description automatically generated](@site/static/img/media/image674.png)

### When updated versions are available you will get a Email Notification.
1. Log in to LCS, go to the Asset Library of the current project. 
2. Go to Solution package asset type. 
3. If newer versions are available, the “update available” button will show. 
4. Click on VERSIONS. 

![Graphical user interface, application Description automatically generated](@site/static/img/media/image675.png)

5. Select the latest version 
6. Click “Get Version”

![Graphical user interface, application Description automatically generated](@site/static/img/media/image676.png)

7. Go to “Software deployable package”, The latest version of the packages will then be 
available.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image677.png)

### Downgrade version. 
To access an older version of ExFlow you can always apply an older version of our Solution. 
- Click on the version needed. 
- Click “Get Version”. 

![Graphical user interface, application Description automatically generated](@site/static/img/media/image678.png)

### Update version fails - Status “deactivated”. 
If you get an error saying “deactivated”, then your current account you are logged on to LCS project 
are not the same that imported the solution last time to the current project.<br/>

**To fix this**
1. Delete the solution. 
2. Reimport the solution again from “Access Information” section above. 

![Graphical user interface, application Description automatically generated](@site/static/img/media/image679.png)

**To be able to access additional files**, they are located in the “Release Notes” downloadable link. 

<u>ExFlow Docs.zip for EU will be downloaded and this file includes</u>
- ExFlow LCS Solution EU Rev 14.pdf 
- ExFlow 2.16.2 for Dynamics 365 for Operations - Release notes.pdf 
- ExFlow label package 2.15.0 for Dynamics 365 for Operations - Release notes.pdf 
- ExFlow Dynamics 365-O User Manual Ver 3.3.pdf 
- Deprecated Features Feb 2021.pdf 
- Automatic invoice coding_ver1.2.pdf 
- ExFlow Embedded Analytics ver 1.1.pdf 
- Exflow Web Service User.pdf 
- Microsoft Installation Guidelines.pdf 
- ExFlow Cloud - Finance & Operation Information.pdf 
- AdditionalFiles.zip 
- EmailTemplate_Approvers.zip 
- ExFlow Dynamics 365-O User Manual Ver 3.5.pdf 
- ExFlow License for Dynamics 365 for Operations.pdf 
- ExFlow PBI User Manual Ver 1.3.pdf 
- RSO Default Dynamics 365.XSLT


<u>ExFlow Docs.zip NO will be downloaded and this file includes</u>
- ExFlow LCS Solution Rev 56.pdf
- ExFlow LCS Solution EU Rev 11.pdf 
- ExFlow LCS Solution NO Rev10 .pdf 
- ExFlow 2 13 1 for Dynamics 365 for Operations - Release notes .pdf 
- ExFlow label package 2.12.0 for Dynamics 365 for Operations - Release notes.pdf 
- ExFlow Dynamics 365-O User Manual Ver 3.3.pdf 
- Deprecated Features Feb 2021.pdf 
- Automatic invoice coding_ver1.2.pdf 
- ExFlow Embedded Analytics ver 1.1.pdf 
- Exflow Web Service User.pdf 
- Microsoft Installation Guidelines.pdf 
- ExFlow Cloud - Finance & Operation Information.pdf 
- AdditionalFiles.zip 
- EmailTemplate_Approvers.zip 
- ExFlow Dynamics 365-O User Manual Ver 3.5.pdf 
- ExFlow License for Dynamics 365 for Operations.pdf 
- ExFlow PBI User Manual Ver 1.3.pdf 
- RSO Default Dynamics 365.XSLT - Updated version 2020-10-09

The link can be found under “VERSIONS”. “Release Notes”. 

![Graphical user interface, application Description automatically generated](@site/static/img/media/image680.png)

_____________________________________________________________________________________________________________________