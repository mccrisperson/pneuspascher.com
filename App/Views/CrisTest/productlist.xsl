<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php">


<xsl:include href="../Templates/app_template.xsl"/>

<xsl:template match="XML_PARTIAL_CONTAINER">
	<!-- Put your content here -->

	<div class="container">
		<!-- <xsl:copy-of select="."/> -->
		<h1>PNEUS <small>GRANDEUR P195/75R15</small></h1>

		<section class="product-list">
			<xsl:for-each select="//Products/Product">
				<a href="{$HTTP_LOCATION}product/detail">
					<div class="item">
						
						<p><xsl:value-of select="model"/></p>
						
						<img class="imgProd" src="{$HTTP_LOCATION}{./img_url}" alt="imgage"/>
						
						<div class="arriereplan_prix">
							<p>à partir de: <xsl:value-of select="price"/></p>
						</div>
						<!-- source image: http://wintertyrereviews.co.uk/wp-content/uploads/2013/04/bridgestone-logo.jpg -->
						<!-- <img class="imgMarque" src="{$HTTP_LOCATION}{./logo_url}" alt="Bridgestone logo."/>			 -->
						
					</div>
				</a>
			</xsl:for-each>
		</section>
		<div class="clearfix"></div>
		<hr/>
		<section>
			<div class="pagination_wrapper">
				<ul class="pagination">
					<li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
					<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
					<li><a href="#">2 <span class="sr-only">(current)</span></a></li>
					<li><a href="#">3 <span class="sr-only">(current)</span></a></li>
					<li><a href="#">4 <span class="sr-only">(current)</span></a></li>
					<li><a href="#">5 <span class="sr-only">(current)</span></a></li>
					<li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
				</ul>
			</div>
		</section>
	</div>

</xsl:template>

</xsl:stylesheet>