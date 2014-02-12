<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match='//Department[@Code = "EE"]/Course'>
        <Course>
            <xsl:attribute name="Number">
                <xsl:value-of select="@Number"/>
            </xsl:attribute>
            <xsl:attribute name="Title">
                <xsl:value-of select="Title"/>
            </xsl:attribute>
            <xsl:copy-of select='Description'/>
            <xsl:apply-templates select="Instructors" mode="EEins"/>
        </Course>
    </xsl:template>

    <xsl:template match="Professor|Lecturer" mode="EEins">
        <Instructor>
            <xsl:value-of select='Last_Name'/>
        </Instructor>
    </xsl:template>

    <xsl:template match='text()'/>

</xsl:stylesheet>