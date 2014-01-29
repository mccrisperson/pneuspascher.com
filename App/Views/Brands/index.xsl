<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php">


<xsl:include href="../Templates/app_template.xsl"/>

<!-- declarer les variables xsl -->
<xsl:param name="my_name"/>
<xsl:param name="banana"/>



<xsl:template match="XML_PARTIAL_CONTAINER">
	<a href="{$HTTP_LOCATION}brands/new">ajouter un brand</a>
	<!-- equivalent de echo dune varieable en php -->
	<!-- <h1 class="{$banana}">
		<xsl:value-of select="$my_name"/>
	</h1>
 -->

 	<!-- <xsl:copy-of select="."/> -->

 	<xsl:for-each select="./Brands/Brand">
 		<p><xsl:value-of select="./name"/></p>
 		<p><xsl:value-of select="./id"/></p>
 	</xsl:for-each>

</xsl:template>

</xsl:stylesheet>