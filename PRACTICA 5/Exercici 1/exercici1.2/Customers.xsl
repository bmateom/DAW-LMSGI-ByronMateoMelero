<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <xsl:element name="customers">
            <xsl:for-each select="DATA/ROW">
                <xsl:element name="customer">
                    <xsl:attribute name="customerNumber">
                        <xsl:value-of select="customerNumber"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:element name="customerName"><xsl:value-of select="customerName"></xsl:value-of></xsl:element>
                    <xsl:element name="phone"><xsl:value-of select="phone"></xsl:value-of></xsl:element>

                    <xsl:element name="contact">
                        <xsl:element name="contactFirstName"><xsl:value-of select="contactFirstName"></xsl:value-of></xsl:element>
                        <xsl:element name="contactLastName"><xsl:value-of select="contactLastName"></xsl:value-of></xsl:element>
                    </xsl:element>

                    <xsl:element name="address">
                        <xsl:element name="addressLine1"><xsl:value-of select="addressLine1"></xsl:value-of></xsl:element>
                        <xsl:element name="addressLine2"><xsl:value-of select="addressLine2"></xsl:value-of></xsl:element>
                        <xsl:element name="city"><xsl:value-of select="city"></xsl:value-of></xsl:element>
                        <xsl:element name="state"><xsl:value-of select="state"></xsl:value-of></xsl:element>
                        <xsl:element name="postalCode"><xsl:value-of select="postalCode"></xsl:value-of></xsl:element>
                        <xsl:element name="country"><xsl:value-of select="country"></xsl:value-of></xsl:element>
                    </xsl:element>

                    <xsl:element name="salesRepEmployeeNumber"><xsl:value-of select="salesRepEmployeeNumber"></xsl:value-of></xsl:element>
                    <xsl:element name="creditLimit"><xsl:value-of select="creditLimit"></xsl:value-of></xsl:element>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>