<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:boomi="http://boomi.com/custom-function">
	<!--How to retrieve a Dynamic Document Property values set earlier in the process.-->
	<xsl:variable name="myDocProp" select="boomi:get-ddp('DDP_MY_PROP')"/>
	<xsl:output omit-xml-declaration="yes"/>
	<xsl:strip-space elements="*"/>
	<!-- identity transform -->
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="Quantity">
		<xsl:copy>
			<xsl:value-of select="substring(concat('            ', .), 1 + string-length(.), 12)"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
