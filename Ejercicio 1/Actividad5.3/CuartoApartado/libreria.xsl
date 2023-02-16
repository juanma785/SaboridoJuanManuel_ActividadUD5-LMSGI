<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<xsl:for-each select="//libro[precio > 12 and autor='Javier Castillo']">
  <xsl:sort select="precio" data-type="number" order="ascending" />
<html>
    <body>
        <h1>Mi biblioteca personal</h1>
        <h2>Superior a 12€</h2>
        <table>
            <tr bgcolor="#0099ff">
                <th>ISBN</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Precio</th>
            </tr>
        <tr>
            <td><xsl:value-of select="ISBN"/></td>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="autor"/></td>
            <td><xsl:value-of select="precio"/></td>
            
        </tr>
        </table>
    </body>
</html>
</xsl:for-each>
        

</xsl:template>
</xsl:stylesheet>