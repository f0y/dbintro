<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="//Department">
        <Department>
            <xsl:copy-of select="Title"/>
            <xsl:copy-of select="Chair"/>
        </Department>
    </xsl:template>

</xsl:stylesheet>