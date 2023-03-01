<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:param name="sello" select="'Universal'"/>
  <xsl:param name="maxDuracion" select="'60:00'"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Canciones del sello discográfico &lt;xsl:value-of select="$sello"/&gt; con duración inferior a &lt;xsl:value-of select="$maxDuracion"/&gt;</title>
      </head>
      <body>
        <h1>Canciones del sello discográfico "<xsl:value-of select="$sello"/>" con duración inferior a "<xsl:value-of select="$maxDuracion"/>"</h1>
        <table border="1">
          <tr bgcolor="#887788">
            <th>Título del Álbum</th>
          <th>Artista</th>
          <th>Duración</th>
          <th>Sello Discográfico</th>
          <th>Año de Publicación</th>
          </tr>
          <xsl:for-each select="CDs/cd[selloDiscografico=$sello and tituloTiempo &lt;= $maxDuracion]">
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