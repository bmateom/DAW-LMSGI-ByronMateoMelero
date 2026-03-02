<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8" />
                <title>Customer Details</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>Customer Number</th>
                        <th>Customer Name</th>
                        <th>Phone</th>
                        <th>Contact First Name</th>
                        <th>Contact Last Name</th>
                        <th>Address Line 1</th>
                        <th>Address Line 2</th>
                        <th>City</th>
                        <th>State</th>
                        <th>Postal Code</th>
                        <th>Country</th>
                        <th>Sales Rep Employee Number</th>
                        <th>Credit Limit</th>
                    </tr>
                    <xsl:for-each select="customers/customer">
                        <tr>
                            <td><xsl:value-of select="@customerNumber"></xsl:value-of></td>
                            <td><xsl:value-of select="customerName"></xsl:value-of></td>
                            <td><xsl:value-of select="phone"></xsl:value-of></td>
                            <td><xsl:value-of select="contact/contactFirstName"></xsl:value-of></td>
                            <td><xsl:value-of select="contact/contactLastName"></xsl:value-of></td>
                            <td><xsl:value-of select="address/addressLine1"></xsl:value-of></td>
                            <td><xsl:value-of select="address/addressLine2"></xsl:value-of></td>
                            <td><xsl:value-of select="address/city"></xsl:value-of></td>
                            <td><xsl:value-of select="address/state"></xsl:value-of></td>
                            <td><xsl:value-of select="address/postalCode"></xsl:value-of></td>
                            <td><xsl:value-of select="address/country"></xsl:value-of></td>
                            <td><xsl:value-of select="salesRepEmployeeNumber"></xsl:value-of></td>
                            <td><xsl:value-of select="creditLimit"></xsl:value-of></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>