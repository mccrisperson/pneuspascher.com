<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php">



<xsl:template name="header">



<header class="top">
	<div class="sub-top">
		<div class="container">
			<div class="logo-wrap">
				<span class="helper"></span><a href="{$HTTP_LOCATION}"><img src="{$HTTP_LOCATION}public/images/logo.png" /></a>
			</div> <!-- end of logo-wrap -->
			<div class="top-menu">
					<ul>
						<li><a href="" data-remote="false" data-toggle="modal" data-target="#connectionForm">Connexion<span id="user" class="glyphicon glyphicon-user"></span></a></li><li><a href="panier.php">Panier<span id="cart" class="glyphicon glyphicon-shopping-cart"></span></a></li>
					</ul>
			</div> <!-- top-menu-fix -->
		</div> <!-- end of container -->
	</div> <!-- end of top -->
	<div class="menu-wrap">
		<ul class="container">
			<li><a href="{$HTTP_LOCATION}">Accueil</a></li>
			<li><a href="{$HTTP_LOCATION}products/all">Pneus</a>
			<!-- Sub menu -->
					<ul>
						<li><a href="{$HTTP_LOCATION}products/all">Par véhicule</a></li>
						<li><a href="{$HTTP_LOCATION}products/all">Par dimension</a></li>
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
                  <form action="" method="post" class="bs-example form-horizontal">
                    <fieldset>
                      <legend>Se connecter</legend>
                      <div class="form-group">
                        <label class="col-lg-12 control-label" for="user_email">Courriel</label>
                         <div class="col-lg-12">
                          <input type="email" name="user[email]" class="form-control" id="user_email" placeholder="Entrez votre adresse couriel"/>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-lg-12 control-label" for="user_password">Mot de passe</label>
                        <div class="col-lg-12">
                          <input type="password" name="user[password]" class="form-control" id="user_password" placeholder="Entrez votre mot de passe"/>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-lg-12">
                         <a href="user.php" data-target="user.php" class="btn btn-primary bs-register col-lg-6">Se connecter</a>
                         <a href="" class="pull-right" data-dismiss="modal" data-remote="false" data-toggle="modal" data-target="#inscriptionForm">je n'ai pas de compte !</a>
                        </div>
                      </div>
                    </fieldset>
                  </form>
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
                  <form action="" method="post" class="bs-example form-horizontal">
                    <fieldset>

                      <!-- Form legend -->
                      <legend>Inscrivez-vous</legend>

                      <!-- Name input field -->
                      <div class="form-group">
                        <label class="col-lg-12 control-label" for="user_name">Nom</label>
                        <div class="col-lg-12">
                          <input type="name" name="user[name]" class="form-control" id="user_name" placeholder="Entrez votre nom complet"/>
                        </div>
                      </div>

                      <!-- Email input field -->
                      <div class="form-group">
                        <label class="col-lg-12 control-label" for="user_email">Courriel</label>
                        <div class="col-lg-12">
                          <input type="email" name="user[email]" class="form-control" id="user_email" placeholder="Entrez votre couriel"/>
                        </div>
                      </div>

                      <!-- Password input field -->
                      <div class="form-group">
                        <label class="col-lg-12 control-label" for="user_password">Mot de passe</label>
                        <div class="col-lg-12"> 
                          <input type="password" name="user[password]" class="form-control" id="user_password" placeholder="Entrez votre mot de passe"/>
                        </div>
                      </div>

                      <!-- Password confirmation field -->
                      <div class="form-group">
                        <label class="col-lg-12 control-label" for="password_confirmation">Confirmation de mot de passe</label>
                        <div class="col-lg-12">
                          <input type="password" name="password_confirmation" class="form-control" id="password_confirmation" placeholder="Confirmez votre mot de passe"/>
                        </div>
                      </div>

                      <!-- Submit input field -->
                      <div class="form-group">
                        <div class="col-lg-12">
                          <a href="inscription.php" data-target="user.php" class="btn btn-primary bs-register">S'inscrire</a>
                          <a href="" class="pull-right" data-dismiss="modal" data-remote="false" data-toggle="modal" data-target="#connectionForm">vous êtes déjà un utilisateur ?</a>
                        </div>
                      </div>

                      <!-- </div> -->
                    </fieldset>
                  </form>
                </div>          
              </div>
            </div>
          </div>
        </div>
        <!-- end connection form -->





</xsl:template>

</xsl:stylesheet>