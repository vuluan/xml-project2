<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Project2 Q7</title>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></link>
            </head>
            <body>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <h3>Country data information</h3>
                            </div>
                            <br></br>
                            <div class="row" id="display">
                                <table class='table table-striped table-dark'>
                                    <tr>
                                        <th>Country</th>
                                        <th>No of provinces</th>
                                        <th>Population in 2011</th>
                                        <th>Inflation</th>
                                        <th>No of Cities</th>
                                    </tr>
                                    <xsl:for-each select="/mondial/country">
                                        <tr>
                                            <td>
                                                <xsl:value-of select="name"/>
                                            </td>
                                            <td>
                                               <xsl:value-of select="count(province)"/>
                                            </td>
                                            <td>
                                               <xsl:if test="not(population[@year='2011'])">
									            'No data!'
                                                </xsl:if>
                                                <xsl:value-of select="population[@year='2011']"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="inflation"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="count(province/city|city)"/>
                                              
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>