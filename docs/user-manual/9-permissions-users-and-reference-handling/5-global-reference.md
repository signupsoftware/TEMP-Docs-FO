---
title: Global reference
sidebar_position: 5
hide_title: true
custom_edit_url: null
---
## Global Reference <button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow | Setup | Global settings | References<br/> 

The "Global reference" functionality allows users to set up global references with legal entity override values. It works similarly to the "Reference person" functionality; however, the functionality is expanded to support global reference values and legal entity overrides. Also, it allows users to connect the reference with Worker/Position/Group/Role.<br/> 

Global reference and vendor account combinations are also supported. Global reference setup can be used simultaneously with the old Reference person setup.

- Participant global reference is supported for agreement workflow.

### Global Reference setup
Global reference functionality is activated as soon as there is at least one record in the setup. To migrate old Reference person setup to new Global reference setup the functionality “Migrate references” is used. It will copy all Reference person setup from all the legal entities and generate new entries in the Global reference setup. To delete all Global reference records “Delete all” button can be used.<br/> 

Once activated "global reference", all ExFlow forms with legacy reference will be substituted by global reference.<br/> 

In the example below the Global reference value “(Jordi)” is configured. Across all legal entities it will point to Worker “Jody Christiansen”, however, there is one legal entity override – in the CAPM company the value “(Jordi)” is pointing to “Charlie Carson”. And for legal entity CNMF Jordi is suspended.

- Filling any of the fields Worker position, User groups, Security roles, will grey-out the other except for vendor.
- Possible to have suspend both on header record with override on line level as well as override on line level.
    - Each time you are going to use the Global references the record would be excluded from lookups or selections (in import form, document form and agreement form) if Suspended = Yes in this Legal entity. 


![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image200.png)

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image201.png)

![Graphical user interface, text, application, email Description automatically generated](@site/static/img/media/image270.png)


|Action     | Description | 
|---- | ----| 
| Save | Save the new records. |
| New | Add new Global reference. | 
| Delete | Delete the marked records. |
| Maintain -Migrate references | Migrate old reference person setup to new Global references. It will copy all Reference person setup from all the legal entities and generate new entries in the Global reference setup.|
| Maintain - Delete All | Delete all Global reference records and use the Reference person functionality.|


### Workflow configuration
The configuration of workflow is similar to Reference person configuration. To use Global reference configuration workflow participant “Global reference” is used.

### Global reference search execution order 
The functionality supports the following combinations: 
- Reference + Vendor
- Vendor
- Reference

It is also supported to have blank vendor/reference values. 

### Sort order of reference search, done on header level:
1.	Trying to find the global reference on a header level based on vendor - and reference value. 
2.	If none found, then trying to find reference on header level based on vendor value and empty reference value. 
3.	If none found, then trying to find reference on header level based on reference value and with empty vendor value. 
4.	If none found, then trying to find reference on header level based on empty reference value and empty vendor value. 
If the reference from values above is found, then that is used to search for a legal entity override. 


### The sort order for legal entity override search: 
1.	Trying to find a legal override using the global reference header and where the company is current company and vendor value matches. 
2.	If not found, then trying to find legal override using global reference header and where the company is current company and blank vendor value. 

<video src="https://docs.signupsoftware.com/videos/FO/global_reference.mp4" width="600" height="400" controls></video>

