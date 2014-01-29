<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php">


<xsl:include href="../Templates/app_template.xsl"/>

<xsl:template match="XML_PARTIAL_CONTAINER">
	<!-- Put your content here -->


	<div class="container bottom-gap">
		<h1>BLIZZAK <small><span class="chevron"></span></small> P195/75R15</h1>
			
		<div class="product-wrap">
			<div class="img-wrap">
				<img class="img-prod" src="{$HTTP_LOCATION}public/images/spin_prod_252862401.jpg" alt="Pneu"/>
				<img class="logo" src="{$HTTP_LOCATION}public/images/Bridgestone_logo.png" alt="Logo Bridgestone"/>
			</div> <!-- end of img-wrap -->
			<div class="product-details well">
				<div class="price">
					<h3>maintenant:</h3>
					<h2>72.35$/ch</h2>
				</div> <!-- end of price -->
			
				<div class="desc">
					<h3>Description</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt, nesciunt, fugiat ad fugit necessitatibus asperiores possimus sint qui quaerat ducimus totam rem vitae reprehenderit delectus dicta modi ipsa optio! Ullam.</p>
				</div> <!-- end of desc -->
				<div class="product-buy">
					<a href="panier.php" class="btn btn-primary submit-button">Ajouter au panier</a>
					<a href="panier_paiement.php" class="btn btn-primary submit-button">Acheter</a>
				</div>

			</div> <!-- end of product-details -->
			<br class="clear"/>
		</div> <!-- end of product-wrap -->

	</div> <!-- end of container --> 	


</xsl:template>

</xsl:stylesheet>