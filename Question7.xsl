<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Project2 Q7</title>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></link>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
                <script>
                    var searchData = function() {
                        var searchCountry = $("#txtCountryName").val();
                        $('.country-name-value').each(function(i, obj) {
                            if ($(obj).text().search(new RegExp(searchCountry, "i")) != -1) {
                                $(this).closest('tr').show();
                            } else {
                                $(this).closest('tr').hide();
                            }
                        });
                        $("#display").show();
                    }
                    $(function() {
                        $("#display").hide();

                        $("#btnSearch").on("click", function() {
                            if($("#txtCountryName").val() != "") {
                                searchData();
                            }
                        });

                        $('#txtCountryName').keypress(function (e) {
                            var key = e.which;
                            if(key == 13)  // the enter key code
                            {
                                if($("#txtCountryName").val() != "") {
                                    searchData();
                                }
                            }
                        });   
                    });
                </script>
            </head>
            <body>
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <h1>Search country information</h1>
                                        <input type="text" class="form-control" id="txtCountryName" placeholder="Enter country name" />
                                    </div>
                                    <button type="button" id="btnSearch" class="btn btn-primary">Ssearch</button>
                                </div>
                            </div>
                            <br/>
                            <div class="row" id="display">
                                <div class="col-md-12">
                                    <table class='table table-dark'>
                                        <thead>
                                            <tr>
                                                <th>Country</th>
                                                <th>No of provinces</th>
                                                <th>Population in 2011</th>
                                                <th>Inflation</th>
                                                <th>No of Cities</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <xsl:for-each select="/mondial/country">
                                                <tr>
                                                    <td class="country-name-value">
                                                        <xsl:value-of select="name"/>
                                                    </td>
                                                    <td>
                                                    <xsl:value-of select="count(province)"/>
                                                    </td>
                                                    <td>
                                                    <xsl:if test="not(population[@year='2011'])">
                                                        No data!
                                                        </xsl:if>
                                                        <xsl:value-of select="population[@year='2011']"/>
                                                    </td>
                                                    <td>
                                                        <xsl:if test="not(inflation)">
                                                        No data!
                                                        </xsl:if>
                                                        <xsl:value-of select="inflation"/>
                                                    </td>
                                                    <td>
                                                        <xsl:value-of select="count(city)"/>
                                                    </td>
                                                </tr>
                                            </xsl:for-each>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>