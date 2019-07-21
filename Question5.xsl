<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        
        <html>
            <head>
                <title>Project2 - Question 5</title>
            </head>
            
            <body>
                <h1>List of country information</h1>
                <table border="1">
                    <tr>
                        <th>Country name</th>
                        <th>Governent</th>
                        <th>Country Code</th>
                        <th>Area</th>
                    </tr>
                    <xsl:for-each select="/mondial/country">
                        <tr>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="government"/>
                            </td>
                            <td>
                                <xsl:value-of select="@car_code"/>
                            </td>
                            <td>
                                <xsl:value-of select="@area"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
            
        </html>
    </xsl:template>
    
</xsl:stylesheet>