<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <h1>Canciones del artista Taylor Swift</h1>
    <body>
      <table border="1">
        <tr bgcolor="#887788">
          <th>Título del Álbum</th>
          <th>Artista</th>
          <th>Duración</th>
          <th>Sello Discográfico</th>
          <th>Año de Publicación</th>
        </tr>
        <xsl:for-each select="//cd[Artista='Taylor Swift']">
          <tr>
            <td><xsl:value-of select="tituloAlbum"/></td>
            <td><xsl:value-of select="Artista"/></td>
            <td><xsl:value-of select="tituloTiempo"/></td>
            <td><xsl:value-of select="selloDiscografico"/></td>
            <td><xsl:value-of select="añoPublicacion"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>