<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php">

<xsl:include href="../Templates/app_template.xsl"/>


<xsl:template match="XML_PARTIAL_CONTAINER">
	<div class="row">
		<div class="col-lg-4 col-lg-offset-4">
			<div class="well">
				<xsl:call-template name="Users.signup"/>
			</div>
		</div>
	</div>
</xsl:template>



</xsl:stylesheet>