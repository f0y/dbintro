<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="//country[@population &lt; 10000000 and @population > 9000000]">
            <xsl:copy-of select="."/>
    </xsl:template>

    <xsl:template match="text()"/>

</xsl:stylesheet>