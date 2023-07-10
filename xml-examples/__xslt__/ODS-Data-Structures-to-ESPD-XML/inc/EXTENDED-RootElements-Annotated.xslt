<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
	xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0"
	xmlns:table="urn:oasis:names:tc:opendocument:xmlns:table:1.0"
	xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0"
	xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2.3"
	xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2.3" 
	xmlns:util="java:java.util.UUID">

	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

	<xsl:template name="createRootElements">
		<xsl:text disable-output-escaping="yes">&lt;</xsl:text>!-- The ESPD-EDM-V3.3.0 is entirely based on OASIS UBL-2.3 --<xsl:text disable-output-escaping="yes">&gt;</xsl:text>
		<cbc:UBLVersionID schemeAgencyID="OASIS-UBL-TC">2.3</cbc:UBLVersionID>
		<xsl:text disable-output-escaping="yes">&lt;</xsl:text>!-- How ESPD-EDM-V3.3.0 uses the UBL-2.3 schemas whilst keeping conformance --<xsl:text disable-output-escaping="yes">&gt;</xsl:text>
		<xsl:variable name="uuid" select="util:toString(util:randomUUID())"/>
		<xsl:text disable-output-escaping="yes">&lt;</xsl:text>!-- The identifier of this document	generally generated by the systems that creates the ESPD --<xsl:text disable-output-escaping="yes">&gt;</xsl:text>
		<cbc:ID schemeAgencyID="DGPE">ESPDREQ-DGPE-<xsl:value-of select="substring($uuid, 32 - 5)"/></cbc:ID>
		<xsl:text disable-output-escaping="yes">&lt;</xsl:text>!-- Indicates whether this document is an original or a copy. In this case the document is the original --<xsl:text disable-output-escaping="yes">&gt;</xsl:text>
		<cbc:CopyIndicator>false</cbc:CopyIndicator>
		<xsl:text disable-output-escaping="yes">&lt;</xsl:text>!-- The unique identifier for this instance of the document. Copies of this document should have different UUIDs --<xsl:text disable-output-escaping="yes">&gt;</xsl:text>
		<cbc:UUID schemeID="ISO/IEC 9834-8:2008 - 4UUID" schemeAgencyID="XXXESPD-SERVICEXXX" schemeVersionID="3.3.0">
			<xsl:value-of select="util:toString(util:randomUUID())"/>
		</cbc:UUID>
		<xsl:text disable-output-escaping="yes">&lt;</xsl:text>!-- The reference number the contracting authority assigns to this procurement procedure --<xsl:text disable-output-escaping="yes">&gt;</xsl:text>
		<cbc:ContractFolderID schemeAgencyID="DGPE">PP.20170419.1024-9</cbc:ContractFolderID>
		<cbc:IssueDate>
			<xsl:value-of select="current-date()"/>
		</cbc:IssueDate>
		<cbc:IssueTime>
			<xsl:value-of select="format-time(current-time(),'[H01]:[m01]:[s01][Z]')"/>
		</cbc:IssueTime>
		<xsl:text disable-output-escaping="yes">&lt;</xsl:text>!-- The version of the content of this document. If the document is modified the element cbc:PreviousVersionID should be instantiated --<xsl:text disable-output-escaping="yes">&gt;</xsl:text>
		<cbc:VersionID schemeAgencyID="OP" schemeVersionID="3.3.0">1.0</cbc:VersionID>
	</xsl:template> 
	
</xsl:stylesheet>
