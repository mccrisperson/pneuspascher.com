<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:php="http://php.net/xsl"
  exclude-result-prefixes="php">



<xsl:template name="Users.signup">

<form action="{$HTTP_LOCATION}register" method="post" class="bs-example form-horizontal">
  <input type="hidden" name="secure_key" value="{$SECURE_KEY}"/>

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
        <input type="submit" value="S'inscrire" class="btn btn-primary bs-register"/>
        <a href="" class="pull-right" data-dismiss="modal" data-remote="false" data-toggle="modal" data-target="#connectionForm">vous êtes déjà un utilisateur ?</a>
      </div>
    </div>

    <!-- </div> -->
  </fieldset>
</form>


</xsl:template>

</xsl:stylesheet>