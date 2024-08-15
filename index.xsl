<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="Car">
<html>
    <head>
        <style>
        *
        {
            font-family: verdana;
            text-align : center;
            margin-top : 3%;
            
        }
        .table{
            margin-left : 20%;
            border :2px solid black;
        }
        th,td{
            padding : 5px;
        }
        </style>
    </head>
    <body>
        <h2>Display xml data in form of html table</h2>
        <table border="1" class="table">
            <thead>
                <tr>
                    <th>manufacture</th>
                    <th>model</th>
                    <th>color</th>
                    <th>price</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="vehicle">
                    <tr>
                        <td><xsl:value-of select="manufacture"/></td>
                        <td><xsl:value-of select="model"/></td>
                        <td><xsl:value-of select="color"/></td>
                        <td><xsl:value-of select="price"/></td>
                    </tr>
                </xsl:for-each>
            </tbody>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>
