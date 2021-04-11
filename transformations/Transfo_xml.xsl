<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output encoding="UTF-8" method="xml" indent="yes
        " omit-xml-declaration="yes"/>
        <xsl:template match="node() | @*">
            <xsl:copy>
                <xsl:apply-templates select="node() | @*"/>
            </xsl:copy>
        </xsl:template>
    <xsl:template match="argument"/> 
    <xsl:template match="div[@type = 'translatio']"/> 
    <xsl:template match="p"/> 
    <xsl:template match="head"/> 
</xsl:stylesheet>