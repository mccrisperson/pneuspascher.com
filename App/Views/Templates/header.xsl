<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php">


<xsl:include href="../Users/_signin_form.xsl"/>
<xsl:include href="../Users/_signup_form.xsl"/>

<xsl:template name="header">

<header class="top">
	<div class="sub-top">
		<div class="container">
			<div class="logo-wrap">
				<span class="helper"></span><a href="{$HTTP_LOCATION}"><img src="{$HTTP_LOCATION}public/images/logo.png" /></a>
			</div> <!-- end of logo-wrap -->
			<div class="top-menu">
					<ul>
						<li>
							<xsl:choose>
								<xsl:when test="$SESSION_PRIVILEDGE_LEVEL &lt; 3">
									<xsl:call-template name="post_link">
										<xsl:with-param name="modelId" select="$USER_ID"/>
										<xsl:with-param name="formAction" select="'signout'"/>
										<xsl:with-param name="linkText" select="'signout'"/>
										<xsl:with-param name="warning" select="'no'"/>
									</xsl:call-template>
								</xsl:when>
								<xsl:otherwise>
									<a href="" data-remote="false" data-toggle="modal" data-target="#connectionForm">Connexion<span id="user" class="glyphicon glyphicon-user"></span></a>
								</xsl:otherwise>
							</xsl:choose>
						</li>
						<li><a href="panier.php">Panier<span id="cart" class="glyphicon glyphicon-shopping-cart"></span></a></li>
					</ul>
			</div> <!-- top-menu-fix -->
		</div> <!-- end of container -->
	</div> <!-- end of top -->
	<div class="menu-wrap">
		<ul class="container">
			<li><a href="index.php">Accueil</a></li>
			<li><a href="productlist.php">Pneus</a>
			<!-- Sub menu -->
					<ul>
						<li><a href="productlist.php">Par véhicule</a></li>
						<li><a href="productlist.php">Par dimension</a></li>
					</ul>
			</li>
			<li><a href="productlist.php">Promotions</a></li>
			<li><a href="faq.php">F.A.Q.</a></li>
			<li><a href="contact.php">Nous joindre</a></li>
		</ul>
	</div> <!-- end of menu-wrap -->
</header>

<!-- BOOTSTRAP -->
<!-- Connection form -->
<div class="modal fade" id="connectionForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <div class="well">
            <xsl:call-template name="Users.signin"/>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- end connection form -->

<!-- Inscription form -->
<div class="modal fade" id="inscriptionForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <div class="well">
          <xsl:call-template name="Users.signup"/>
        </div>          
      </div>
    </div>
  </div>
</div>
<!-- end connection form -->





</xsl:template>

</xsl:stylesheet>