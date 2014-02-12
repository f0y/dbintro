<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <countries>
                <xsl:apply-templates select="//country"/>
        </countries>
    </xsl:template>

    <xsl:template match="country">
        <country>
            <xsl:attribute name="languages"> <xsl:value-of select="count(.//language)"/></xsl:attribute>
            <xsl:attribute name="cities"> <xsl:value-of select="count(.//city)"/></xsl:attribute>
            <name><xsl:value-of select="@name"/></name>
            <population><xsl:value-of select="@population"/></population>
        </country>
    </xsl:template>

</xsl:stylesheet>