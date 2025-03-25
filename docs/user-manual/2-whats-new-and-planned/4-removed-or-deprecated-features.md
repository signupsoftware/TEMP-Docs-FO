---
title: Removed or deprecated features
sidebar_position: 4
hide_title: true
custom_edit_url: null
---
## Deprecated Features 
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>
:::info Deprecated from version 2.16.0 and 2.17.0
:::

### Create journal for accrual of estimated costs

| | |
| :----- | :----- |
| Reason for removal or deprecation | Feature is replaced.
| Replaced by another feature? | Replaced by *Create journal for accrual of estimated costs of all document line types*.
| Affected product areas | Old batch job will be obsolete.
| Script | No script will be available.
| Deprecated date | January 17th 2024.
| Planned to be removed from release | 2.16.0.

### Import OCR invoices to import form

| | |
| :-----| :-----|
| Reason for removal or deprecation | Feature is replaced. |
| Replaced by another feature? | Replaced by *Import OCR invoices to import form - threads*. |
| Affected product areas | Old batch job will be obsolete. |
| Script | No script will be available. |
| Deprecated date | January 17th 2024. |
| Planned to be removed from release | 2.17.0. |

### Posting proposal

| | |
| :-----| :-----|
| Reason for removal or deprecation | Feature is replaced. |
| Replaced by another feature? | Replaced by *Posting proposal advanced*. |
| Affected product areas | Old function and setup will be removed. |
| Script | No script will be available. |
| Deprecated date | January 17th 2024. |
| Planned to be removed from release | 2.17.0. |

### Methods for suggesting approvers (ExFlow Parameters)

| | |
| :-----| :-----|
| Reason for removal or deprecation | All legacy approval workflows have been discontinued due to focus on advanced workflow. |
| Replaced by another feature? | Replaced by *Advanced workflow*. |
| Affected product areas | Old approval workflows not built upon Advanced workflow needs to be rebuilt. This also means that parameters/functions that are related to legacy workflows will be removed. For example, Position hierarchy logic based on owner of dimension and Position controlled by financial dimension. |
| Script | No script will be available. |
| Deprecated date | January 17th 2024. |
| Planned to be removed from release | 2.17.0. |

### Position hierarchy logic based on owner of dimension (ExFlow Parameters)

| | |
| :-----| :-----|
| Reason for removal or deprecation | Function related to legacy approval workflow. |
| Replaced by another feature? | Replaced by *Advanced workflow financial dimensions mapping*. |
| Affected product areas | Legacy approval workflow. |
| Script | No script will be available. |
| Deprecated date | January 17th 2024. |
| Planned to be removed from release | 2.16.0. |

### Position controlled by financial dimension (ExFlow Parameters)

| | |
| :-----| :-----|
| Reason for removal or deprecation | Function related to legacy approval workflow. |
| Replaced by another feature? | Replaced by *Advanced workflow approver on financial dimension*. |
| Affected product areas | Legacy approval workflow. |
| Script | No script will be available. |
| Deprecated date | January 17th 2024. |
| Planned to be removed from release | 2.16.0. |

### Reference person

| | |
| :-----| :-----|
| Reason for removal or deprecation | Feature is replaced. |
| Replaced by another feature? | Replaced by *Global references*. |
| Affected product areas | Workflows. |
| Script | Script available. |
| Deprecated date | January 17th 2024. |
| Planned to be removed from release | 2.18.0. |

:::info Deprecated during 2021
:::

### Import Methods (Parameter)

| | |
| :-----| :-----|
| Reason for removal or deprecation | Feature is duplicate. |
| Replaced by another feature? | Replaced by the feature multiple Import methods, available in the setup section of ExFlow main menu. |
| Affected product areas | Import methods setup available in ExFlow parameters. |
| Script | No Script will be provided due to technical limitations. |
| Deprecated date | 1st of February 2021. |
| Planned to be removed from release | - |

### Import Invoice XML Files

| | |
| :-----| :-----|
| Reason for removal or deprecation | This is complimentary with the (Multiple) import methods feature and will be using the same batch jobs to import invoices. |
| Replaced by another feature? | Taken care of with the new import methods and will be using the same batch jobs required to import invoices. "Import invoice XML files (Multiple methods)". |
| Affected product areas | The batch Job used for middle-ware integration will be obsolete. |
| Script | No Script will be provided due to technical limitations. |
| Deprecated date | 1st of February 2021. |
| Planned to be removed from release | 2.13.0 |

### Middleware Integration batch job

| | |
| :-----| :-----|
| Reason for removal or deprecation | This is complimentary with the (Multiple) import methods feature and will be using the same batch jobs to import invoices. |
| Replaced by another feature? | Taken care of with the new import methods and will be using the same batch jobs required to import invoices. "Import invoice XML files (Multiple methods)". |
| Affected product areas | The batch Job used for middle-ware integration will be obsolete. |
| Script | No Script will be provided due to technical limitations. |
| Deprecated date | 1st of February 2021. |
| Planned to be removed from release | 2.13.0 |

### Vendor Upload RSO

| | |
| :-----| :-----|
| Reason for removal or deprecation | Upload vendor information that is available in ExFlow parameters and is triggered by the batch job *Upload vendor information to ReadSoft Online* has been marked as deprecated. The feature is duplicate. |
| Replaced by another feature? | The batch job *Upload vendor information to ExFlow data capture (Multiple methods)*. It is important to know that this feature is complimentary with the “Multiple Import methods” feature mentioned above. |
| Affected product areas | Vendor upload to RSO setup in ExFlow parameters, and the batch job “Upload vendor information to ReadSoft Online”. |
| Script | No Script will be provided due to technical limitations. |
| Deprecated date | 1st of February 2021. |
| Planned to be removed from release | 2.13.0 |

### Email Notification

| | |
| :-----| :-----|
| Reason for removal or deprecation | The feature has been replaced. |
| Replaced by another feature? | The feature has been replaced by *Email Broadcast* |
| Affected product areas | The Email notification setup will be obsolete. |
| Script | No Script. |
| Deprecated date | 1st of February 2021. |
| Planned to be removed from release | - |

### Coding Line for Import

| | |
| :-----| :-----|
| Reason for removal or deprecation | The feature is duplicate. |
| Replaced by another feature? | This feature has been replaced by *Attribute value map*. |
| Affected product areas | Coding line for import will be marked as obselete. |
| Script | No Script. |
| Deprecated date | 1st of February 2021. |
| Planned to be removed from release | - |


### SignUp Recommendations
--
Due to the limitations and restrictions that the deprecated features carry, it is important to enable the replacing features allowing clients to benefit from the extended capabilities. Furthermore, deprecated features will not be supported, and will be removed one year from being marked as deprecated.

N.B: It is the client’s responsibility to enable the substituting features in their test environments, verify and confirm that they work as expected before they are migrated to production.



