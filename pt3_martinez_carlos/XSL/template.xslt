<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
  <h2> Recetas </h2>
  <table border="1">
    <tr bgcolor="#93EA3F">
      <th style="text-align:left">Nombre</th>
      <th style="text-align:left">Tipo</th>
      <th style="text-align:left">Tiempo</th>
      <th style="text-align:left">Dificultad</th>
      <th style="text-align:left">Personas</th>
    </tr>
    <xsl:for-each select="recetario/receta">
    <tr>
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="tipo"/></td>
      <td><xsl:value-of select="tiempoPreparacion"/></td>
      <td><xsl:value-of select="dificultad"/></td>
      <td><xsl:value-of select="personas"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
