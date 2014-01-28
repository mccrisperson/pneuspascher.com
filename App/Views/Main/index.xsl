<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php">


<xsl:include href="../Templates/app_template.xsl"/>
<xsl:include href="_slider.xsl"/>

<xsl:template match="XML_PARTIAL_CONTAINER">

	<xsl:call-template name="slider"/>

</xsl:template>

</xsl:stylesheet>