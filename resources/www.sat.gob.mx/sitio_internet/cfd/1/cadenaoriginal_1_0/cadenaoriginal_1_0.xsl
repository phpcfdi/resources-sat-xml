<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" version="1.0" indent="no"/>
	
<xsl:template match="/">|<xsl:apply-templates select="/Comprobante"/>||</xsl:template>
	
<xsl:template match="Comprobante">
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="./@serie"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@folio"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@fecha"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@noAprobacion"/></xsl:call-template>
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="./@formaDePago"/></xsl:call-template><xsl:apply-templates select="./Emisor"/><xsl:apply-templates select="./Receptor"/>
<xsl:for-each select="./Conceptos/Concepto"><xsl:apply-templates select="."/></xsl:for-each>
<xsl:for-each select="./Impuestos/Retenciones/*"><xsl:apply-templates select="."/></xsl:for-each>
<xsl:for-each select="./Impuestos/Traslados/*"><xsl:apply-templates select="."/></xsl:for-each>
</xsl:template>

<xsl:template match="Emisor">
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@rfc"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@nombre"/></xsl:call-template>
<xsl:apply-templates select="./DomicilioFiscal"/>
<xsl:if test="./ExpedidoEn"><xsl:call-template name="Domicilio"><xsl:with-param name="Nodo" select="./ExpedidoEn"/></xsl:call-template></xsl:if>
</xsl:template>

<xsl:template match="Receptor">
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="./@rfc"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@nombre"/></xsl:call-template>
<xsl:call-template name="Domicilio"><xsl:with-param name="Nodo" select="./Domicilio"/></xsl:call-template>
</xsl:template>

<xsl:template match="Retencion">
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@impuesto"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@importe"/></xsl:call-template>
</xsl:template>

<xsl:template match="Traslado">
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@impuesto"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@importe"/></xsl:call-template>
</xsl:template>

<xsl:template match="Concepto">
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@cantidad"/></xsl:call-template>
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="./@unidad"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@descripcion"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@valorUnitario"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@importe"/></xsl:call-template>
<xsl:if test="./InformacionAduanera"><xsl:apply-templates select="./InformacionAduanera"/></xsl:if>
<xsl:if test="./CuentaPredial"><xsl:apply-templates select="./CuentaPredial"/></xsl:if>
</xsl:template>

<xsl:template match="InformacionAduanera">
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@numero"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@fecha"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@aduana"/></xsl:call-template>
</xsl:template>

<xsl:template match="CuentaPredial">
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@numero"/></xsl:call-template>
</xsl:template>

<xsl:template match="DomicilioFiscal">
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@calle"/></xsl:call-template>
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="./@noExterior"/></xsl:call-template>
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="./@noInterior"/></xsl:call-template>
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="./@colonia"/></xsl:call-template>
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="./@localidad"/></xsl:call-template>
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="./@referencia"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@municipio"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@estado"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@pais"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="./@codigoPostal"/></xsl:call-template>
</xsl:template>

<xsl:template name="Domicilio">
<xsl:param name="Nodo"/>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="$Nodo/@calle"/></xsl:call-template>
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="$Nodo/@noExterior"/></xsl:call-template>
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="$Nodo/@noInterior"/></xsl:call-template>
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="$Nodo/@colonia"/></xsl:call-template>
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="$Nodo/@localidad"/></xsl:call-template>
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="$Nodo/@referencia"/></xsl:call-template>
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="$Nodo/@municipio"/></xsl:call-template>
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="$Nodo/@estado"/></xsl:call-template>
<xsl:call-template name="Formato"><xsl:with-param name="valor" select="$Nodo/@pais"/></xsl:call-template>
<xsl:call-template name="Opcional"><xsl:with-param name="valor" select="$Nodo/@codigoPostal"/></xsl:call-template>
</xsl:template>

<xsl:template name="Formato"><xsl:param name="valor"/>|<xsl:call-template name="Trim"><xsl:with-param name="s" select="$valor"/></xsl:call-template></xsl:template>
	
<xsl:template name="Opcional"><xsl:param name="valor"/><xsl:if test="$valor">|<xsl:call-template name="Trim"><xsl:with-param name="s" select="$valor"/></xsl:call-template></xsl:if></xsl:template>
	
<xsl:template name="Trim"><xsl:param name="s"/><xsl:call-template name="rtrim"><xsl:with-param name="s" select="concat(substring(translate($s,' &#9;&#10;&#13;',''),1,1),substring-after($s,substring(translate($s,' &#9;&#10;&#13;',''),1,1)))"/></xsl:call-template></xsl:template>
	
<xsl:template name="rtrim"><xsl:param name="s"/><xsl:param name="i" select="string-length($s)"/><xsl:choose><xsl:when test="translate(substring($s,$i,1),' &#9;&#10;&#13;','')"><xsl:value-of select="substring($s,1,$i)"/></xsl:when><xsl:when test="$i&lt;2"/><xsl:otherwise><xsl:call-template name="rtrim"><xsl:with-param name="s" select="$s"/><xsl:with-param name="i" select="$i - 1"/></xsl:call-template></xsl:otherwise></xsl:choose></xsl:template>
	
</xsl:stylesheet>