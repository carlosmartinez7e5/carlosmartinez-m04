<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
  <meta charset="utf-8" />
  <link rel="stylesheet" type="text/css" href="../css/estil.css"/>
  <title>Lista de recetas</title>
</head>
<body style="background-color:90EE90;">

<center><div style="font-size:18;">
<pre> <a href="../index.html"> INICIO </a><a href="../index.html"> SOBRE MÍ </a><a> RECETAS </a><a href="../contacto/contacto.html"> CONTACTO </a> OTRAS COSAS </pre>
</div></center>

  <h2 style="text-align:center"> <u>LISTA DE RECETAS</u> </h2>
  <xsl:for-each select="recetario/receta">
  <!-- CADA UNA DE LAS RECETAS-->
  <div style="display: inline-block;width: 30%;margin-right:1%;margin-left: 1%;margin-top: 2%;text-align: center;background-color:#8ed1b7">
  <div style="margin-bottom:1%;">
    <xsl:element name="img">
      <xsl:attribute name="src">
        <xsl:value-of select="imatge/@image"/>
      </xsl:attribute>
      <xsl:attribute name="height"> 20% </xsl:attribute>
      <xsl:attribute name="width"> 40% </xsl:attribute>
    </xsl:element>
  </div>
  <b>Receta:</b>
  <xsl:value-of select="nombre"/> <br/>
  <b>Tipo de plato:</b>
  <xsl:value-of select="tipo"/> <br/>
  <b>Tiempo de preparación:</b>
  <xsl:value-of select="tiempoPreparacion"/> <br/>
  <b>Dificultad:</b>
  <xsl:value-of select="dificultad"/> <br/>
  <b>Para:</b>
  <xsl:value-of select="personas"/>
  personas
  </div>
  </xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet>