<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes"/>

    <xsl:template match="/">
    <table border="1">
        <xsl:apply-templates select="//Department[@Code = 'CS']/Course">
            <xsl:sort select="Title" order="ascending"/>
        </xsl:apply-templates>
    </table>
    </xsl:template>

    <xsl:template match='Course[@Enrollment > 200]'>
        <tr>
            <td>
                <i><xsl:value-of select="@Number"/></i>
            </td>
            <td>
                <b><xsl:value-of select="Title"/></b>
            </td>
            <td><xsl:value-of select="@Enrollment"/></td>
        </tr>
    </xsl:template>

    <xsl:template match='text()'/>

</xsl:stylesheet>