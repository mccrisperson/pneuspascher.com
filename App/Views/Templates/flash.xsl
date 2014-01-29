<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php">



<xsl:template name="flash">
	<xsl:param name="message"/>
	<xsl:param name="type"/>

	<xsl:if test="$type != ''">
		<div class="container" style="margin-top: 10px;">
			<div class="row">
				<div  class="col-lg-10 col-lg-offset-1">
					<xsl:element name="div">
						<xsl:choose>
							<xsl:when test="$type = 'success'">
								<xsl:attribute name="class">alert alert-dismissable alert-success</xsl:attribute>
							</xsl:when>
							<xsl:when test="$type = 'error'">
								<xsl:attribute name="class">alert alert-dismissable alert-danger</xsl:attribute>
							</xsl:when>
						</xsl:choose>
						<button class="close" data-dismiss="alert" type="button">×</button>
						<strong><xsl:value-of select="$message"/></strong>
					</xsl:element>
				</div>
			</div>
		</div>

	</xsl:if>

</xsl:template>

</xsl:stylesheet>