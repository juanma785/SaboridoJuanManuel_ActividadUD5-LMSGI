<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<xsl:variable name="AutorUltimo" select="/libreria/libro[last()]/autor"/>
<xsl:for-each select="/libreria/libro[precio &gt; 10]">
  <xsl:if test="autor = $AutorUltimo">
    <html>
    <body>
        <h1>Mi biblioteca personal</h1>
        <h2>Superior a 10€</h2>
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
  </xsl:if>
</xsl:for-each>
        

</xsl:template>
</xsl:stylesheet>