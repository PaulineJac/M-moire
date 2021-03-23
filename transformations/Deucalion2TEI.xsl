<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output indent="yes" encoding="UTF-8" method="xml"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="/">
        <xsl:element name="TEI">
            <xsl:element name="teiHEader">
                <xsl:element name="fileDesc">
                    <xsl:element name="titleStmt">
                        <xsl:element name="title">
                            <xsl:text>Title</xsl:text>
                        </xsl:element>
                    </xsl:element>
                </xsl:element>
            </xsl:element>
            <xsl:element name="p">
            <xsl:apply-templates/>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="row">
        <xsl:element name="w">
            <xsl:attribute name="lemma">
                <xsl:value-of select="Heading1"/>
            </xsl:attribute>
            <xsl:attribute name="pos">
                <xsl:value-of select="Heading2"/>
            </xsl:attribute>
            <xsl:attribute name="msd">
                <xsl:value-of select="Heading3"/>
            </xsl:attribute>
            <xsl:value-of select="Heading0"/>
        </xsl:element>
    </xsl:template>
    
   
    
    
</xsl:stylesheet>