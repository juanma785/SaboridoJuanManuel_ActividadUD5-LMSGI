<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <body>

      <h1>Mi biblioteca personal</h1>
      <table border="1">

        <tr>
          <th>ISBN</th>
          <th>Título</th>
          <th>Autor</th>
          <th>Precio</th>
        </tr>
        <xsl:for-each select="libreria/libro">
          <xsl:choose>
            <xsl:when test="precio &gt; 25">
              <tr bgcolor="#ff0000">
                <td><xsl:value-of select="isbn"/></td>
                <td><xsl:value-of select="titulo"/></td>
                <td><xsl:value-of select="autor"/></td>
                <td><xsl:value-of select="precio"/></td>
              </tr>
            </xsl:when>
          </xsl:choose>
        </xsl:for-each>
      </table>
    </body>

    <body>
        
        <h1>Mi biblioteca personal</h1>
        <table border="1">
  
          <tr>
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Precio</th>
          </tr>
          <xsl:for-each select="libreria/libro">
            <xsl:choose>
              <xsl:when test="precio &lt; 25">
                <tr bgcolor="#66ff66">
                  <td><xsl:value-of select="isbn"/></td>
                  <td><xsl:value-of select="titulo"/></td>
                  <td><xsl:value-of select="autor"/></td>
                  <td><xsl:value-of select="precio"/></td>
                </tr>
              </xsl:when>
            </xsl:choose>
          </xsl:for-each>
        </table>
      </body>



  </html>
</xsl:template>
</xsl:stylesheet>