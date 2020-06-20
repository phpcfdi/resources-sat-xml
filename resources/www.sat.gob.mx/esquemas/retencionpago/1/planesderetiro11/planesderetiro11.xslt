<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:planesderetiro11="http://www.sat.gob.mx/esquemas/retencionpago/1/planesderetiro11">

  <!-- Con el siguiente método se establece que la salida deberá ser en texto -->
  <xsl:output method="text" version="1.0" encoding="UTF-8" indent="no"/>

  <!--  Aquí iniciamos el procesamiento de los datos incluidos en Planes de Retiro-->
  <xsl:template match="planesderetiro11:Planesderetiro">
    <!-- Iniciamos el tratamiento de los atributos de Planesderetiro-->
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@Version"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@SistemaFinanc"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./@MontTotAportAnioInmAnterior"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@MontIntRealesDevengAniooInmAnt"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@HuboRetirosAnioInmAntPer"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./@MontTotRetiradoAnioInmAntPer"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./@MontTotExentRetiradoAnioInmAnt"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./@MontTotExedenteAnioInmAnt"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@HuboRetirosAnioInmAnt"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./@MontTotRetiradoAnioInmAnt"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./@NumReferencia"/>
    </xsl:call-template>
    <!--
			Llamadas para procesar al los sub nodos de AportacionesODepositos
		-->
    <xsl:for-each select="./planesderetiro11:AportacionesODepositos">
      <xsl:apply-templates select="."/>
    </xsl:for-each>

  </xsl:template>
  <!-- Manejador de nodos tipo AportacionesODepositos -->
  <xsl:template match="planesderetiro11:AportacionesODepositos">
    <!-- Iniciamos el tratamiento de los atributos planesderetiro -->
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@TipoAportacionODeposito"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@MontAportODep"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./@RFCFiduciaria"/>
    </xsl:call-template>
  </xsl:template>

</xsl:stylesheet>
