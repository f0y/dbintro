<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes"/>

    <!--<xsl:template match="*|@*|text()">-->
    <!--<xsl:copy>-->
    <!--<xsl:apply-templates select="*|@*|text()"/>-->
    <!--</xsl:copy>-->
    <!--</xsl:template>-->

    <xsl:template match="//country[contains(@name, 'stan')]">
        <Stan><xsl:value-of select="@name"/></Stan>
    </xsl:template>

    <xsl:template match="text()"/>

</xsl:stylesheet>