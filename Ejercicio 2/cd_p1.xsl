<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>CDs</h1>
        <table>
            <tr bgcolor="#887788">
        <tr>Título del Album</tr>
        <tr>Artista</tr>
        <tr>Tiempo</tr>
        <tr>Sello Discográfico</tr>
        <tr>Año de Publicación</tr>
    </tr>

        <xsl:for-each select="CDs/cd"/>
        <xsl:value-of select="tituloAlbum"/>
        <xsl:value-of select="Artista"/>
        <xsl:value-of select="selloDiscografia"/>
        <xsl:value-of select="añoPublicacion"/>



    </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>