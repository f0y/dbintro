<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <html>
            <table border='1'>
                <xsl:apply-templates select="//country[count(.//language) > 3]">
                    <xsl:sort select="string(count(.//language))" order="descending" data-type="number"/>
                </xsl:apply-templates>
            </table>
        </html>
    </xsl:template>

    <xsl:template match="country">
        <tr>
            <td> <b> <xsl:value-of select="@name"/> </b> </td>
            <td> <xsl:value-of select="@population"/> </td>
            <td> <xsl:value-of select="@area"/> </td>
            <td> <xsl:value-of select="count(.//language)"/> </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>