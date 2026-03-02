<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <xsl:element name="employees">
            <xsl:for-each select="DATA/ROW">
                <xsl:element name="employee">
                    <xsl:attribute name="employeeNumber">
                        <xsl:value-of select="employeeNumber"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:element name="lastName"><xsl:value-of select="lastName"></xsl:value-of></xsl:element>
                    <xsl:element name="firstName"><xsl:value-of select="firstName"></xsl:value-of></xsl:element>
                    <xsl:element name="email"><xsl:value-of select="email"></xsl:value-of></xsl:element>
                    <xsl:element name="reportsTo"><xsl:value-of select="reportsTo"></xsl:value-of></xsl:element>
                    <xsl:element name="jobTitle"><xsl:value-of select="jobTitle"></xsl:value-of></xsl:element>
                    <xsl:element name="office">
                        <xsl:attribute name="ofCode">
                            <xsl:value-of select="ofCode"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:element name="City">
                            <xsl:value-of select="ofCity"></xsl:value-of>
                        </xsl:element>
                        <xsl:element name="Phone">
                            <xsl:value-of select="ofPhone"></xsl:value-of>
                        </xsl:element>
                        <xsl:element name="AddressLine1">
                            <xsl:value-of select="ofAdd1"></xsl:value-of>
                        </xsl:element>
                        <xsl:element name="AddressLine2">
                            <xsl:value-of select="ofAdd2"></xsl:value-of>
                        </xsl:element>
                        <xsl:element name="State">
                            <xsl:value-of select="ofState"></xsl:value-of>
                        </xsl:element>                
                        <xsl:element name="Country">
                            <xsl:value-of select="ofCountry"></xsl:value-of>
                        </xsl:element>                  
                        <xsl:element name="PostalCode">
                            <xsl:value-of select="ofPostalCode"></xsl:value-of>
                        </xsl:element>      
                        <xsl:element name="Territory">
                            <xsl:value-of select="ofTerritory"></xsl:value-of>
                        </xsl:element>      
                    </xsl:element>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>