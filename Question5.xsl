<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        
        <html>
            <head>
                <title>Project2 - Question 5</title>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></link>
            </head>
            
            <body>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <h1>List of country information</h1>
                            <table class='table table-dark'>
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
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>