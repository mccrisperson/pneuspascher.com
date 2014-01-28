<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php">



<xsl:template name="slider">

	<section class="slider">
		
		<ul class="main-slider">
			<li class="dark">
				<div class="container">
					<div class="sliderInfo">
						<h1>FAITES VITE,<br/> L'HIVER APPROCHE</h1>
						<p>Grande variété de pneus Runflat</p>
						<div class="action">
							<a class="btn" href="#">Magasinez vos pneus maintenant</a>
						</div>
					</div>
				</div>
				<img src="{$HTTP_LOCATION}public/images/lexus-pneus-neige.jpg" title="Lexus" />
			</li>
			<li class="dark">
				<div class="container">
					<div class="sliderInfo">
						<h1>PARTEZ <br/>À L'AVENTURE</h1>
						<p>Évadez vous en toute sécurité</p>
						<div class="action">
							<a class="btn" href="#">Magasinez vos pneus maintenant</a>
						</div>
					</div>
				</div>
				<img src="{$HTTP_LOCATION}public/images/bmw-pneus-neige.jpg" title="Bmw" />
			</li>
			<li class="light">
				<div class="container">
					<div class="sliderInfo">
						<h1>AFFRONTEZ<br/> LA GLACE</h1>
						<p>Avec nos conseils, vous serez satisfait</p>
						<div class="action">
							<a class="btn" href="#">Magasinez vos pneus maintenant</a>
						</div>
					</div>
				</div>
				<img src="{$HTTP_LOCATION}public/images/volks-pneus-neige.jpg" title="Volks" />
			</li>
		</ul>
	</section>
		

	<section class="titleBtn noir">
		<div class="container">
			<h1 class="title">TROUVEZ VOS PNEUS</h1>
			<a class="btn btnRed fl" href="#">Par véhicule</a>
			<a class="btn btnBlue fr" href="#">Par dimension</a>
			<div class="clear"></div>
		</div>
	</section>

	<section class="boitesPromo">
		<div class="container">
			<h1 class="title">PROMOS EN COURS</h1>
			<ul class="bxslider">
				<li>
					<a href="#" class="promo">
						<div class="img">
							<img src="{$HTTP_LOCATION}public/images/promo1.jpg" alt="promo pneus hivers" title="promo hivers 1" />
						</div>
						<div class="desc">
							<div class="inner">
								<h1>Promo spécial 1</h1>
								<p>Nam quibusdam, quos audio sapientes habitos in Graecia, placuisse opinor mirabilia quaedam (sed nihil est quod illi non persequantur argutiis).</p>
							</div>
						</div>
						<div class="clear"></div>
					</a>	
				</li>
				<li>
					<a href="#" class="promo">
						<div class="img">
							<img src="{$HTTP_LOCATION}public/images/promo1.jpg" alt="promo pneus hivers" title="promo hivers 1" />
						</div>
						<div class="desc">
							<div class="inner">
								<h1>Promo spécial 2</h1>
								<p>Partim fugiendas esse nimias amicitias, ne necesse sit unum sollicitum esse pro pluribus; satis superque esse sibi suarum cuique rerum.</p>
							</div>
						</div>
						<div class="clear"></div>
					</a>	
				</li>
			</ul>
		</div>
	</section>
		
	<section class="bgNoir">
		<div class="container">
			<article class="event">
			<h1>Événement important loi pneus d'hivers Lt en 2015</h1>
				<div class="innerEvent fl">
					<p><strong>À compter du 15 décembre 2014, un pneu d’hiver devra :</strong>
					<ul>
						<li>porter le pictogramme représentant une montagne sur laquelle un flocon de neige est superposé;</li>
						<li>ou être muni de crampons et utilisé conformément au Règlement sur l'utilisation d'antidérapants.
						<a href="http://www.mtq.gouv.qc.ca/portal/page/portal/grand_public/vehicules_promenade/securite_routiere/securite_conditions_hivernales/reglement_utilisation_pneus_hiver"><br/>en savoir plus</a></li>
					</ul>
					</p>
				</div>
				<div class="eventImg fr">
					<img src="{$HTTP_LOCATION}public/images/picto.jpg" alt="pictogramme pneus d'hivers" title="Le pictogramme pour les pneus d'hivers" />
				</div>
				<div class="clearfix"></div>
			</article>
		</div>
	</section> <!-- end of bgNoir -->

	<section class="apropos bottom-gap">
		<div class="container">
			<h1>NOUS VOUS GARANTISSON<br/>TOUJOURS LES MEILLEURS PRIX!</h1>
			<p>Partim fugiendas esse nimias amicitias, ne necesse sit unum sollicitum esse pro pluribus; satis superque esse sibi suarum cuique rerum.
			Partim fugiendas esse nimias amicitias, ne necesse sit unum sollicitum esse pro pluribus; satis superque esse sibi suarum cuique rerum.
			Partim fugiendas esse nimias amicitias, ne necesse sit unum sollicitum esse pro pluribus; satis superque esse sibi suarum cuique rerum.</p>
		</div>

	</section>



</xsl:template>

</xsl:stylesheet>