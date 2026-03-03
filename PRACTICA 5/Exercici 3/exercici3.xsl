<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html lang="ca">

            <head>
                <meta charset="UTF-8" />
                <title>Llista d'empleats</title>
                <style>

                    h2 {
                    font-size: 1.5em;
                    }
                    
                    h3 {
                    font-size:1.2em;
                    color: blue;
                    }

                    .dades-oficina li{
                    color: red;
                    font-style:italic;
                    }

                    .nom-empleat {
                        font-size: 18px;
                    }


                </style>

            </head>
            <body>
                <h2>Llista d'empleats</h2>
                <ul>
                    <xsl:for-each select="employees/employee">
                        <xsl:sort select="firstName" data-type="text" order="ascending"></xsl:sort>
                        <li>
                            <h3>
                                <xsl:text>Empleat amb id </xsl:text>
                                <xsl:value-of select="@employeeNumber"></xsl:value-of>
                            </h3>
                            <ul>
                                <li class="nom-empleat">
                                    <strong>Nom:</strong>
                                    <xsl:value-of select="firstName"></xsl:value-of>
                                </li>
                                <li>
                                    <strong>Correu:</strong>
                                    <xsl:value-of select="email"></xsl:value-of>
                                </li>
                                <li>
                                    <strong>Id del seu superior:</strong>
                                    <xsl:value-of select="reportsTo"></xsl:value-of>
                                </li>
                                <li>
                                    <strong>Posició:</strong>
                                    <xsl:value-of select="jobTitle"></xsl:value-of>
                                </li>
                                <li>
                                    <strong>Oficina amb codi:</strong>
                                    <xsl:value-of select="office/@ofCode"></xsl:value-of>
                                    <ul class="dades-oficina">
                                        <li>
                                            <strong>Telèfon:</strong>
                                            <xsl:value-of select="office/Phone"></xsl:value-of>
                                        </li>
                                        <li>
                                            <strong>Adreça:</strong>

                                            <xsl:value-of select="office/AddressLine1"></xsl:value-of>
                                        </li>
                                        <li>
                                            <strong>Estat:</strong>
                                            <xsl:value-of select="office/State"></xsl:value-of>
                                        </li>
                                        <li>
                                            <strong>País:</strong>
                                            <xsl:value-of select="office/Country"></xsl:value-of>
                                        </li>
                                        <li>
                                            <strong>Codi Postal:</strong>
                                            <xsl:value-of select="office/PostalCode"></xsl:value-of>
                                        </li>
                                        <li>
                                            <strong>Territori:</strong>
                                            <xsl:value-of select="office/Territory"></xsl:value-of>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </xsl:for-each>

                </ul>


            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>