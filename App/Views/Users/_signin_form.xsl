<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:php="http://php.net/xsl"
  exclude-result-prefixes="php">


<xsl:template name="Users.signin">
<form action="{$HTTP_LOCATION}login" method="post" class="bs-example form-horizontal">
  <input type="hidden" name="secure_key" value="{$SECURE_KEY}"/>
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
       <input type="submit" value="Se connecter" class="btn btn-primary bs-register col-lg-6"/>
       <a href="" class="pull-right" data-dismiss="modal" data-remote="false" data-toggle="modal" data-target="#inscriptionForm">je n'ai pas de compte !</a>
      </div>
    </div>
  </fieldset>
</form>
</xsl:template>


</xsl:stylesheet>