<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:boomi="http://boomi.com/custom-function">
	<!--How to retrieve a Dynamic Document Property values set earlier in the process.-->
	<xsl:variable name="myDocProp" select="boomi:get-ddp('DDP_MY_PROP')"/>
	<xsl:template match="Object">
		<xsl:copy>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates select="File">
				<xsl:sort select="modifiedDate" order="ascending" data-type="number"/>
			</xsl:apply-templates>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="@* | node()">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
