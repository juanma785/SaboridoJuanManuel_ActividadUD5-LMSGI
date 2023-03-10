<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  
  <xsl:template match="/">
    <html>
      <head>
        <title>Calificaciones</title>
        <style type="text/css">
        </style>
      </head>
      <body>


        <div style="position:relative; margin: 0 auto; width: 50%;">
          <table border="1" style="width: 50%;">
          
            <body>
              <xsl:apply-templates select="notas/alumno"/>
            </body>
          </table>
        </div>
      </body>
    </html>

   
  </xsl:template>
  
  <xsl:template match="alumno">
    <tr>
      <td><xsl:value-of select="@convocatoria"/></td>
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="apellidos"/></td>
      <td><xsl:value-of select="cuestionarios"/></td>
      <td><xsl:value-of select="tareas"/></td>
      <td><xsl:value-of select="examen"/></td>
      <td><xsl:value-of select="final"/></td>
    </tr>
    <xsl:template match="/notas">
    
      <head>
        <title>Calificaciones de junio</title>
       
     
      <body>
          <table>
          
            <tr>
              <th>Nombre</th>
              <th>Apellidos</th>
              <th>Matrícula</th>
              <th>Cuestionarios</th>
              <th>Tareas</th>
              <th>Examen</th>
              <th>Final</th>
            </tr>
            
            <xsl:apply-templates select="alumno[@convocatoria='Junio']"/>
          </table>
      </body>
      </head>
    
  </xsl:template>


  <xsl:template match="alumno">
    <xsl:if test="@convocatoria='Junio'">
      <tr>
        <td><xsl:value-of select="nombre"/></td>
        <td><xsl:value-of select="apellidos"/></td>
        <td><xsl:value-of select="matricula"/></td>
        <td><xsl:value-of select="cuestionarios"/></td>
        <td><xsl:value-of select="tareas"/></td>
        <td><xsl:value-of select="examen"/></td>
        <td><xsl:value-of select="final"/></td>
      </tr>
    </xsl:if>
  </xsl:template>



  <xsl:choose>
  <xsl:when test="final &gt;= 9">
    <td style="color: #33ccff">Sobresaliente</td>
  </xsl:when>
  <xsl:when test="final &gt;= 7">
    <td style="color: #3399FF">Notable</td>
  </xsl:when>
  <xsl:when test="final &gt;= 6">
    <td style="color: #000000">Bien</td>
  </xsl:when>
  <xsl:when test="final &gt;= 5">
    <td style="color: #ffa500">Suficiente</td>
  </xsl:when>
  <xsl:otherwise>
    <td style="color: #cc0000">Suspenso</td>
  </xsl:otherwise>
</xsl:choose>
  </xsl:template>
 
 
</xsl:stylesheet>
