<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php">


<xsl:include href="../Templates/app_template.xsl"/>

<!-- declarer les variables xsl -->
<xsl:param name="my_name"/>

<xsl:template match="XML_PARTIAL_CONTAINER">

	<form action="{$HTTP_LOCATION}brands/create" method="post">
		<input type="hidden" name="secure_key" value="{$SECURE_KEY}"/>
		<fieldset>
			<legend>Brand Form</legend>
			<label for="">Name: </label>
			<input type="text" name="brand[name]"/>

			<input type="submit"/>
		</fieldset>
	</form>

</xsl:template>

</xsl:stylesheet>