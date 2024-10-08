<?xml version="1.0" encoding="UTF-8"?>
<!--
******************************************************************************************************************
		ExFlow Instance Documentation	
		
		Title 		= ExFlow_Html.xslt
		Publisher 	= SignUp Software AB
		Creator 	= Fredrik Andersson
		Created 	= 2020-01-14
		Modified    = ""		
******************************************************************************************************************
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" doctype-system="http://www.w3.org/TR/html4/loose.dtd" indent="yes"/>
	<xsl:include href="ExFlow_CSS.xsl"/>
	<xsl:variable name="labelDoc" select="document('ExFlow_Labels.xml')"/>
	<!-- Matches invoice root, create Envelope -->
	<xsl:template match="/Invoices">
			<Invoices>
			<!-- Matches invoices -->
				<xsl:apply-templates select="Invoice" />
			</Invoices>
	</xsl:template>
	<!-- Matches invoices -->
	<xsl:template match="Invoice">
		<html>
			<head>
				<title>
					<span>
						<xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='ExFlowXML']"/>
					</span>
				</title>
				<xsl:call-template name="CSSReference"/>
			</head>
			<body>
				<TABLE border="1" width="95%" cellspacing="5" cellpadding="5">
					<TR>
						<TD>
							<TABLE id="Table1" cellSpacing="1" cellPadding="1" width="100%" border="0">
								<TR>
									<TD class="InvoiceHeaderTd"/>
									<TD class="InvoiceHeaderTd"/>
									<TD class="InvoiceHeaderTd"/>
									<TD class="DocumentHeader">
										<h3 class="DocumentType">
											<xsl:if test="Credit=1">
												<xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='CreditInvoice']"/>
											</xsl:if>
											<xsl:if test="Credit=0">
												<xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='Invoice']"/>
											</xsl:if>
										</h3>
										<TABLE id="Table2" cellSpacing="0" cellPadding="2" width="100%" border="0">
											<TR>
												<TD class="DocumentHeaderInfo"><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='InvoiceNo']"/></TD>
												<TD class="DocumentHeaderInfo"><xsl:value-of select="InvoiceNo"/></TD>
											</TR>
											<TR>
												<TD class="DocumentHeaderInfo"><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='PostingDate']"/></TD>
												<TD class="DocumentHeaderInfo"><xsl:value-of select="PostingDate"/></TD>
											</TR>
											<TR>
												<TD class="DocumentHeaderInfo"><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='AmountInclVat']"/></TD>
												<TD class="DocumentHeaderInfo"><xsl:value-of select="AmountInclVat"/></TD>
											</TR>
											<TR>
												<TD class="DocumentHeaderInfo"><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='VatAmount']"/></TD>
												<TD class="DocumentHeaderInfo"><xsl:value-of select="VatAmount"/></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
							</TABLE>
							<!-- Start Invoice head information -->
							<HR width="100%" SIZE="1"/>
							<BR />
							<STRONG><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='HeaderDetails']"/></STRONG>
							<TABLE id="Table3" cellspacing="1" cellpadding="1">
								<TR>
									<TD valign="top">
										<TABLE id="Table3a" cellSpacing="1" cellPadding="1" >
											<TR>
												<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='DueDate']"/></TD>
												<TD><xsl:value-of select="DueDate"/></TD>
											</TR>
											<xsl:if test="OrderNo!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='OrderNo']"/></TD>
													<TD><xsl:value-of select="OrderNo"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="Project!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='Project']"/></TD>
													<TD><xsl:value-of select="Project"/></TD>
												</TR>
											</xsl:if>
											<TR>
												<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='Reference']"/></TD>
												<TD><xsl:value-of select="Reference"/></TD>
											</TR>
											<TR>
												<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='CurrencyCode']"/></TD>
												<TD><xsl:value-of select="CurrencyCode"/></TD>
											</TR>
												
										</TABLE>
									</TD>
									<TD valign="top">
										<TABLE id="Table3b" cellSpacing="1" cellPadding="1">
												<xsl:if test="VendorName!=''">
													<TR>
														<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='VendorName']"/></TD>
														<TD><xsl:value-of select="VendorName"/></TD>
													</TR>
												</xsl:if>
												<xsl:if test="VendorNo!=''">
													<TR>
														<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='VendorNo']"/></TD>
														<TD><xsl:value-of select="VendorNo"/></TD>
													</TR>
												</xsl:if>
												<xsl:if test="VendorID!=''">
													<TR>
														<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='VendorId']"/></TD>
														<TD><xsl:value-of select="VendorID"/></TD>
													</TR>
												</xsl:if>
												<xsl:if test="VendorID2!=''">
													<TR>
														<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='VendorId']"/>2</TD>
														<TD><xsl:value-of select="VendorID2"/></TD>
													</TR>
												</xsl:if>
												<xsl:if test="VendorID3!=''">
													<TR>
														<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='VendorId']"/>3</TD>
														<TD><xsl:value-of select="VendorID3"/></TD>
													</TR>
												</xsl:if>
												<xsl:if test="VendorID4!=''">
													<TR>
														<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='VendorId']"/>4</TD>
														<TD><xsl:value-of select="VendorID4"/></TD>
													</TR>
												</xsl:if>
												<xsl:if test="VendorID5!=''">
													<TR>
														<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='VendorId']"/>5</TD>
														<TD><xsl:value-of select="VendorID5"/></TD>
													</TR>
												</xsl:if>
										</TABLE>
									</TD>
									<TD valign="top" />
								</TR>
							</TABLE>
							<!-- End Invoice head information -->
							<HR class="HrDetailsBorder"/>
							<BR />
							<!-- Start Misc -->
							<STRONG><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='Miscellaneous']"/></STRONG>
							<TABLE id="Table7" cellspacing="1" cellpadding="1">
								<TR>
									<TD valign="top">
										<TABLE id="Table7a" cellSpacing="1" cellPadding="1" >
											<xsl:if test="MiscHead1!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='MiscHead1']"/></TD>
													<TD><xsl:value-of select="MiscHead1"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="MiscHead2!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='MiscHead2']"/></TD>
													<TD><xsl:value-of select="MiscHead2"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="MiscHead3!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='MiscHead3']"/></TD>
													<TD><xsl:value-of select="MiscHead3"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="MiscHead4!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='MiscHead4']"/></TD>
													<TD><xsl:value-of select="MiscHead4"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="MiscHead5!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='MiscHead5']"/></TD>
													<TD><xsl:value-of select="MiscHead5"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="MiscHead6!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='MiscHead6']"/></TD>
													<TD><xsl:value-of select="MiscHead6"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="MiscHead7!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='MiscHead7']"/></TD>
													<TD><xsl:value-of select="MiscHead7"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="MiscHead8!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='MiscHead8']"/></TD>
													<TD><xsl:value-of select="MiscHead8"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="MiscHead9!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='MiscHead9']"/></TD>
													<TD><xsl:value-of select="MiscHead9"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="MiscHead10!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='MiscHead10']"/></TD>
													<TD><xsl:value-of select="MiscHead10"/></TD>
												</TR>
											</xsl:if>
										</TABLE>
									</TD>
									<TD valign="top">
										<TABLE id="Table7b" cellSpacing="1" cellPadding="1">
											<xsl:if test="BatchNo!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='BatchNo']"/></TD>
													<TD><xsl:value-of select="BatchNo"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="UserName!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='UserName']"/></TD>
													<TD><xsl:value-of select="UserName"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="ScanTime!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='ScanTime']"/></TD>
													<TD><xsl:value-of select="ScanTime"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="ScanDate!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='ScanDate']"/></TD>
													<TD><xsl:value-of select="ScanDate"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="DueDays!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='DueDays']"/></TD>
													<TD><xsl:value-of select="DueDays"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="ImageName!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='ImageName']"/></TD>
													<TD><xsl:value-of select="ImageName"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="MessageId!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='MessageId']"/></TD>
													<TD><xsl:value-of select="MessageId"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="Message!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='Message']"/></TD>
													<TD><xsl:value-of select="Message"/></TD>
												</TR>
											</xsl:if>
										</TABLE>
									</TD>
									<TD valign="top">
										<TABLE id="Table7c" cellSpacing="1" cellPadding="1">
											<xsl:if test="PaymId!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='PaymId']"/></TD>
													<TD><xsl:value-of select="PaymId"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="PayToAccount!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='PayToAccount']"/></TD>
													<TD><xsl:value-of select="PayToAccount"/></TD>
												</TR>
											</xsl:if>
											<xsl:if test="ReferencePayment!=''">
												<TR>
													<TD><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='ReferencePayment']"/></TD>
													<TD><xsl:value-of select="ReferencePayment"/></TD>
												</TR>
											</xsl:if>
										</TABLE>
									</TD>
								</TR>
							</TABLE>
							<!-- End Misc -->
							<HR width="100%" SIZE="1"/>
							<BR />
							<!-- Start Lines -->
							<STRONG><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='InvoiceLines']"/></STRONG>
							<TABLE class="ItemsTable" id="Table6" width="100%">
								<TR>
									<TH class="ItemLineHeader"><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='OrderNo']"/></TH>
									<TH class="ItemLineHeader"><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='ItemNo']"/></TH>
									<TH class="ItemLineHeader"><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='ItemDescription']"/></TH>
									<TH class="ItemLineHeader"><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='Quantity']"/></TH>
									<TH class="ItemLineHeader"><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='UnitPrice']"/></TH>
									<TH class="ItemLineHeader"><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='UnitOfMeassure']"/></TH>
									<TH class="ItemLineHeader"><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='LineTotal']"/></TH>
								</TR>
								<xsl:for-each select="Lines/InvoiceLine">
									<xsl:variable name="cls">
										<xsl:choose>
											<xsl:when test="position() mod 2">oddrow</xsl:when>
											<xsl:otherwise>evenrow</xsl:otherwise>
										</xsl:choose>
									</xsl:variable>
									<TR class="InvoiceLine">
										<TD class="OrderNoRow {$cls}" align="right">
											<xsl:value-of select="OrderNoRow"/>
										</TD>
										<TD class="No {$cls}" align="right">
											<xsl:value-of select="No"/>
										</TD>
										<TD class="Description {$cls}" align="right">
											<xsl:value-of select="Description"/>
										</TD>
										<TD class="Quantity {$cls}" align="right">
											<xsl:value-of select="Quantity"/>
										</TD>
										<TD class="DirectUnitCost {$cls}" align="right">
											<xsl:value-of select="DirectUnitCost"/>
										</TD>
										<TD class="UnitOfMeasure {$cls}" align="right">
											<xsl:value-of select="UnitOfMeasure"/>
										</TD>
										<TD class="LineTotal {$cls}" align="right">
											<xsl:value-of select="LineTotal"/>
										</TD>
									</TR>
								</xsl:for-each>
							</TABLE>
							<!-- End Lines -->

							<HR width="100%" SIZE="1"/>
							<BR />
							<!-- Start footer -->
							<TABLE border="0" width="100%" cellspacing="0" cellpadding="0">
								<TR>
									<TD>
										<B><xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='ExFlowXML']"/></B>
										<BR/>
										<xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='StylesheetInfo']"/>
										<BR/>
										<xsl:value-of select="$labelDoc/module/document-merge/g-funcs/g[@name='StylesheetVersion']"/>
									</TD>

								</TR>
							</TABLE>
							<!-- End footer -->
						</TD>
					</TR>
				</TABLE>

			</body>
		</html>
	
	</xsl:template>
</xsl:stylesheet>
