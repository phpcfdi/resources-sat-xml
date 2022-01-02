<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:retenciones="http://www.sat.gob.mx/esquemas/retencionpago/2" xmlns:arrendamientoenfideicomiso="http://www.sat.gob.mx/esquemas/retencionpago/1/arrendamientoenfideicomiso" xmlns:dividendos="http://www.sat.gob.mx/esquemas/retencionpago/1/dividendos" xmlns:enajenaciondeacciones="http://www.sat.gob.mx/esquemas/retencionpago/1/enajenaciondeacciones" xmlns:fideicomisonoempresarial="http://www.sat.gob.mx/esquemas/retencionpago/1/fideicomisonoempresarial" xmlns:intereses="http://www.sat.gob.mx/esquemas/retencionpago/1/intereses" xmlns:intereseshipotecarios="http://www.sat.gob.mx/esquemas/retencionpago/1/intereseshipotecarios" xmlns:operacionesderivados="http://www.sat.gob.mx/esquemas/retencionpago/1/operacionesderivados" xmlns:pagosaextranjeros="http://www.sat.gob.mx/esquemas/retencionpago/1/pagosaextranjeros" xmlns:premios="http://www.sat.gob.mx/esquemas/retencionpago/1/premios" xmlns:sectorfinanciero="http://www.sat.gob.mx/esquemas/retencionpago/1/sectorfinanciero" xmlns:planesderetiro11="http://www.sat.gob.mx/esquemas/retencionpago/1/planesderetiro11" xmlns:plataformasTecnologicas="http://www.sat.gob.mx/esquemas/retencionpago/1/PlataformasTecnologicas10" version="2.0">

  <!-- Con el siguiente método se establece que la salida deberá ser en texto -->
  <xsl:output method="text" version="1.0" encoding="UTF-8" indent="no"/>  
  <!-- 
	En esta sección se define la inclusión de las plantillas de utilerías para colapsar espacios
	-->
  <xsl:include href="../../../sitio_internet/cfd/2/cadenaoriginal_2_0/utilerias.xslt"/>
  <!-- 
		En esta sección se define la inclusión de las demás plantillas de transformación para 
		la generación de las cadenas originales de los complementos fiscales 
	-->
  <xsl:include href="../1/arrendamientoenfideicomiso/arrendamientoenfideicomiso.xslt"/>  
  <xsl:include href="../1/dividendos/dividendos.xslt"/>
  <xsl:include href="../1/enajenaciondeacciones/enajenaciondeacciones.xslt"/>
  <xsl:include href="../1/fideicomisonoempresarial/fideicomisonoempresarial.xslt"/>
  <xsl:include href="../1/intereses/intereses.xslt"/>
  <xsl:include href="../1/intereseshipotecarios/intereseshipotecarios.xslt"/>
  <xsl:include href="../1/pagosaextranjeros/pagosaextranjeros.xslt"/>
  <xsl:include href="../1/premios/premios.xslt"/>
  <xsl:include href="../1/operacionesconderivados/operacionesconderivados.xslt"/>
  <xsl:include href="../1/sectorfinanciero/sectorfinanciero.xslt"/>
  <xsl:include href="../1/planesderetiro11/planesderetiro11.xslt"/>
  <xsl:include href="../1/PlataformasTecnologicas10/ServiciosPlataformasTecnologicas10.xslt"/>

  <!-- Aquí iniciamos el procesamiento de la cadena original con su | inicial y el terminador || -->
  <xsl:template match="/">|<xsl:apply-templates select="/retenciones:Retenciones"/>||</xsl:template>
  <!--  Aquí iniciamos el procesamiento de los datos incluidos en el comprobante -->
  <xsl:template match="retenciones:Retenciones">
    <!-- Iniciamos el tratamiento de los atributos de comprobante -->
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@Version"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@NoCertificado"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./@FolioInt"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@FechaExp"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@LugarExpRetenc"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@CveRetenc"/>
    </xsl:call-template>
    <xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./@DescRetenc"/>
    </xsl:call-template>
    <!--
		Llamadas para procesar al los sub nodos de la retencion
	-->
	<xsl:apply-templates select="./retenciones:CfdiRetenRelacionados"/>
    <xsl:apply-templates select="./retenciones:Emisor"/>
    <xsl:apply-templates select="./retenciones:Receptor"/>
    <xsl:apply-templates select="./retenciones:Periodo"/>
    <xsl:apply-templates select="./retenciones:Totales"/>
    <xsl:apply-templates select="./retenciones:Complemento"/>
  </xsl:template>
  
  <!-- Manejador de nodos tipo CfdiRetenRelacionados -->
  <xsl:template match="retenciones:CfdiRetenRelacionados">
    <!-- Iniciamos el tratamiento de los atributos del Emisor -->
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@TipoRelacion"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@UUID"/>
    </xsl:call-template>
  </xsl:template>
  
  <!-- Manejador de nodos tipo Emisor -->
  <xsl:template match="retenciones:Emisor">
    <!-- Iniciamos el tratamiento de los atributos del Emisor -->
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@RfcE"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@NomDenRazSocE"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@RegimenFiscalE"/>
    </xsl:call-template>
  </xsl:template>
  
  <!-- Manejador de nodos tipo Receptor -->
  <xsl:template match="retenciones:Receptor">
    <!-- Iniciamos el tratamiento de los atributos del Receptor -->
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@NacionalidadR"/>
    </xsl:call-template>
    
	<!-- Llamadas para procesar el subnodo Receptor Nacional. -->
    <xsl:if test="./retenciones:Nacional">
      <xsl:call-template name="Requerido">
        <xsl:with-param name="valor" select="./retenciones:Nacional/@RfcR"/>
      </xsl:call-template>
      <xsl:call-template name="Requerido">
        <xsl:with-param name="valor" select="./retenciones:Nacional/@NomDenRazSocR"/>
      </xsl:call-template>
      <xsl:call-template name="Opcional">
        <xsl:with-param name="valor" select="./retenciones:Nacional/@CurpR"/>
      </xsl:call-template>
      <xsl:call-template name="Requerido">
        <xsl:with-param name="valor" select="./retenciones:Nacional/@DomicilioFiscalR"/>
      </xsl:call-template>
    </xsl:if>
    
    <!-- Llamadas para procesar el subnodo Receptor Extranjero. -->
    <xsl:if test="./retenciones:Extranjero">
      <xsl:call-template name="Opcional">
        <xsl:with-param name="valor" select="./retenciones:Extranjero/@NumRegIdTribR"/>
      </xsl:call-template>
      <xsl:call-template name="Requerido">
        <xsl:with-param name="valor" select="./retenciones:Extranjero/@NomDenRazSocR"/>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  
  <!-- Manejador de nodos tipo Periodo -->
  <xsl:template match="retenciones:Periodo">
    <!-- Iniciamos el tratamiento de los atributos del Periodo -->
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@MesIni"/>
    </xsl:call-template>
    <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@MesFin"/>
    </xsl:call-template>
        <xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@Ejercicio"/>
    </xsl:call-template>
    </xsl:template>

  <!-- Manejador de nodos tipo Totales -->
  <xsl:template match="retenciones:Totales">
	<xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@MontoTotOperacion"/>
    </xsl:call-template>
    	<xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@MontoTotGrav"/>
    </xsl:call-template>
    	<xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@MontoTotExent"/>
    </xsl:call-template>
	<xsl:call-template name="Requerido">
      <xsl:with-param name="valor" select="./@MontoTotRet"/>
    </xsl:call-template>
    	<xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./@UtilidadBimestral"/>
    </xsl:call-template>
	<xsl:call-template name="Opcional">
      <xsl:with-param name="valor" select="./@ISRCorrespondiente"/>
    </xsl:call-template>
    <xsl:for-each select="./retenciones:ImpRetenidos">
      <xsl:apply-templates select="."/>
       <xsl:call-template name="Opcional">
          <xsl:with-param name="valor" select="./@BaseRet"/>
       </xsl:call-template>
       <xsl:call-template name="Opcional">
          <xsl:with-param name="valor" select="./@ImpuestoRet"/>
       </xsl:call-template>
       <xsl:call-template name="Requerido">
         <xsl:with-param name="valor" select="./@MontoRet"/>
      </xsl:call-template>
      <xsl:call-template name="Requerido">
        <xsl:with-param name="valor" select="./@TipoPagoRet"/>
      </xsl:call-template>    
    </xsl:for-each>
  </xsl:template>  

  <!-- Manejador de nodos tipo Complemento -->
  <xsl:template match="retenciones:Complemento">
    <xsl:for-each select="./*">
      <xsl:apply-templates select="."/>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
