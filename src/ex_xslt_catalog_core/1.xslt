<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="//Department">
        <xsl:copy-of select="Title"/>
    </xsl:template>
</xsl:stylesheet>