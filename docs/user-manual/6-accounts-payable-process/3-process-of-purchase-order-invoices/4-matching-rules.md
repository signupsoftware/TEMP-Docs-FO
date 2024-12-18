---
title: ExFlow matching rules
sidebar_position: 4
hide_title: true
custom_edit_url: null
---
## Matching Rules
<button class="pdf-button" onClick={() => { print(); }}>Save as PDF</button>

ExFlow Matching rules extends matching capabilities to support scenarios not covered in standard:
- Tolerances to categories matching.
- Support for amount tolerance to item matching.
- Support for matching policy as part of the tolerances for items.
- Extended price matching more granular.

### Price tolerances
ExFlow AP > Setup > Resource > Matching rules > Price tolerances, includes;

- a column for line level matching type consisting of a list of “All”, “None”, “2-Way matching”, “3-way matching”, “All” should be the default value for new lines.
- a field “Unit price tolerance amount”, to allow unlimited tolerance set 9999999999 as the tolerance.
- a filed “Unit price tolerance percentage”, to allow unlimited tolerance set 9999999999 as the tolerance.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image626.png)

### Item price total tolerances
ExFlow AP > Setup > Resource > Matching rules > Item Price total tolerances, includes;

- a column for line level matching type consisting of a list of “All”, “None”, “2-Way matching”, “3-way matching”, “All” should be the default value for new lines.
- a field “Price total tolerance amount”, to allow unlimited tolerance set 9999999999 as the tolerance.
- a field “Price total tolerance percentage”, to allow unlimited tolerance set 9999999999 as the tolerance.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image627.png)

### Invoice total tolerances
ExFlow AP > Setup > Resource > Matching rules > Invoice total tolerances, setup includes:

- a field “Matching type”, possible choices are: “All” and “Table”.
- a field “Invoice total type type relation”, possible choices are: “Subtotal amount”, “Total discount”, “Charges”, “Sales tax”, “Invoice amount”.
- a field “Price total tolerance amount”, to allow unlimited tolerance set 9999999999 as the tolerance. 
- a field “Price total tolerance percentage”, to allow unlimited tolerance set 9999999999 as the tolerance´.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image628.png)

### Category Price tolerances
ExFlow AP > Setup > Resource > Matching rules > Category price tolerances, setup includes:

- a field “Category code”, possible choices are: “All” and “Procurement category”.
- a field “Procurement category” showing category tree.
- a column for line level matching type consisting of a list of “All”, “None”, “2-Way matching”, “3-way matching”, “All” should be the default value for new lines.
- a field “Unit price tolerance amount”, to allow unlimited tolerance set 9999999999 as the tolerance.
- a field “Unit price tolerance percentage”, to allow unlimited tolerance set 9999999999 as the tolerance.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image629.png)

### Category Price Totals tolerances
ExFlow AP > Setup > Resource > Matching rules > Category Price Totals tolerances, setup includes:

- a field “Category code”, possible choices are: “All” and “Procurement category”.
- a field “Category relation” showing category tree.
- a column for line level matching type consisting of a list of “All”, “None”, “2-Way matching”, “3-way matching”, “All” should be the default value for new lines.
- a field “Price total tolerance amount”, to allow unlimited tolerance set 9999999999 as the tolerance.
- a field “Price total tolerance percentage”, to allow unlimited tolerance set 9999999999 as the tolerance.

![Graphical user interface, application Description automatically generated](@site/static/img/media/image630.png)

### Matching details in posting process
The invoice matching details, reached from the ExFlow posting process handles and shows the new tolerances and logic.<br/>
Invoice in import form: General > Actions > Matching details, 
Unit price amount is included in the match status update. In the grid list in the top part, the new “Unit price tolerance amount” field is shown, and all fields display correct values based on the applied rules.


### Matching rule execution
The matching rules should follow the principle of most detailed rule first, e.g. the setup with the most fields defined of the identifier fields should be in effect.<br/>
If a tolerance value is set “999…” it means “unlimited value” making that criteria not checked in matching.<br/> Example: 999… percentage and 500 in amount, means that percentage tolerance is unlimited but a maximum amount is of 500.<br/>
Rules are always “and”, meaning if one of the percent or amount tolerances are exceeded matching will fail.
For category tolerances it’s important to always check the parent levels in the tree if no specific setup exist for the chosen category and use the parent node setting that is found (as the line policy setup).<br/>
Remember that execution of the matching of “Extended price variance” should follow the pattern of standard, e.g. only perform matching if the parameter is turned on and follow the hierarchy of the rules, e.g. if no setup is found in the detail tolerance setup the base settings in AP parameters are to be used for a line.
