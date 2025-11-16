<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="3.0">
    
    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
            <line x1="100" y1="100" x2="100" y2="600" stroke="blue" stroke-width="2"></line>
            <line x1="100" y1="600" x2="1000" y2="600" stroke="blue" stroke-width="2"></line>
            
            <xsl:for-each select="meteo/mesure[@date='2006-11-11']/ville">
                <xsl:variable name="x" select="position() * 120"/>
                <text stroke="blue" x="{$x}" y="620"><xsl:value-of select="@nom"/></text>
            </xsl:for-each>
        </svg>
        
    </xsl:template>
</xsl:stylesheet>