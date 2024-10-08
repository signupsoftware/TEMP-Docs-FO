<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output encoding="UTF-8" method="xml" />

<xsl:template match="/">

<Statements>
	<GUID>
		<xsl:value-of select="Id"/>
	</GUID>

	<xsl:for-each select="Batches/Batch/Documents/Document">
		<Statement>
			<CompanyId>
				<xsl:value-of select="Parties/Party[contains(Type,'buyer')]/ExternalId"/>
			</CompanyId>
			<ImageName>
				<xsl:value-of select="Filename"/>
			</ImageName>
			<VendorName>
				<xsl:value-of select="Parties/Party[contains(Type,'supplier')]/Name"/>
			</VendorName>
			<VATNumber>
				<xsl:value-of select="HeaderFields/HeaderField[contains(Type,'suppliervatregistrationnumber')]/Text"/>
			</VATNumber>
			<OrgNumber>
				<xsl:value-of select="HeaderFields/HeaderField[contains(Type,'supplieraccountnumber1')]/Text"/>
			</OrgNumber>
			<VendorID3>
				<xsl:value-of select="HeaderFields/HeaderField[contains(Type,'identifier3')]/Text"/>
			</VendorID3>
			<VendorID4>
				<xsl:value-of select="HeaderFields/HeaderField[contains(Type,'identifier4')]/Text"/>
			</VendorID4>
			<VendorID5>
				<xsl:value-of select="HeaderFields/HeaderField[contains(Type,'identifier5')]/Text"/>
			</VendorID5>
			<EmailAddress>
				<xsl:value-of select="HeaderFields/HeaderField[contains(Type,'emailaddress')]/Text"/>
			</EmailAddress>
			<FromDate>
				<xsl:value-of select="HeaderFields/HeaderField[contains(Type,'fromdate')]/Text"/>
			</FromDate>
			<ToDate>
				<xsl:value-of select="HeaderFields/HeaderField[contains(Type,'todate')]/Text"/>
			</ToDate>
			
			<Lines>
				<xsl:for-each select="Tables/Table/TableRows/TableRow">
					<StatementLine>
						<InvoiceDate>
							<xsl:value-of select="ItemFields/ItemField[contains(Type,'LIT_invoicedate')]/Text"/>
						</InvoiceDate>
						<InvoiceNumber>
							<xsl:value-of select="ItemFields/ItemField[contains(Type,'LIT_invoicenumber')]/Text"/>
						</InvoiceNumber>
						<InvoiceDescription>					
							<xsl:value-of select="ItemFields/ItemField[contains(Type,'LIT_invoicedescription')]/Text"/>
						</InvoiceDescription>
						<Amount>
							<xsl:value-of select="ItemFields/ItemField[contains(Type,'LIT_amount')]/Text"/>
						</Amount>
						<PaidAmount>
							<xsl:value-of select="ItemFields/ItemField[contains(Type,'LIT_paidamount')]/Text"/>
						</PaidAmount>
						<AmountDue>
							<xsl:value-of select="ItemFields/ItemField[contains(Type,'LIT_amountdue')]/Text"/>
						</AmountDue>
						<DueDate>
							<xsl:value-of select="ItemFields/ItemField[contains(Type,'LIT_duedate')]/Text"/>
						</DueDate>
					</StatementLine>
				</xsl:for-each>
			</Lines>

		</Statement>
	</xsl:for-each>
</Statements>
</xsl:template>
</xsl:stylesheet>