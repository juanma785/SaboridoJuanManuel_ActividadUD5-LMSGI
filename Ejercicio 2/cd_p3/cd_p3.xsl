<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <body>
      <h2>CDs del sello Universal</h2>
      <table border="1">
        <tr>
          <th>Título del álbum</th>
          <th>Artista</th>
          <th>Duración</th>
          <th>Año de publicación</th>
        </tr>
        <xsl:for-each select="//cd[selloDiscografico='Universal']">
        <tr>
          <td><xsl:value-of select="tituloAlbum"/></td>
          <td><xsl:value-of select="Artista"/></td>
          <td><xsl:value-of select="tituloTiempo"/></td>
          <td><xsl:value-of select="añoPublicacion"/></td>
        </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>