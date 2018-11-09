<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
			<xsl:apply-templates select="/LanguageList/Language"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Language">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="class">
				<xsl:if test="IsActive='true'">
					<xsl:text>d-none</xsl:text>
				</xsl:if>
			</xsl:attribute>


			<xsl:if test="position()=1">
				VI
			</xsl:if>
			<xsl:if test="position()=2">
				EN
			</xsl:if>
		</a>
	</xsl:template>
</xsl:stylesheet>