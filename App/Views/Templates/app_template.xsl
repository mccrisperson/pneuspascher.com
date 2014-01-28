<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl"
	exclude-result-prefixes="php">

<!-- Output settings -->
<xsl:output method="html" indent="no" omit-xml-declaration="yes"/>


<!-- Includes -->
<xsl:include href="header.xsl"/>
<xsl:include href="footer.xsl"/>


<!-- Templates paramters -->
<xsl:param name="HTTP_LOCATION"/>
<xsl:param name="title" select="'MyApp'"/>
<xsl:param name="description" select="'Set a small description of the page'"/>
<xsl:param name="keywords" select="'Some, relevant, keywords'"/>
<xsl:param name="flash" select="''"/>


<!-- Disable default text output for no-matching node -->
<xsl:template match="text()"/>


<!-- MAIN TEMPLATE CONTAINER -->
<xsl:template match="/">

<!-- HTML5 doctype declaration, XSL version -->
<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html></xsl:text>
	<html>

		<head>

			<!-- META TAGS -->
	    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>		
			<meta charset="utf-8"/>
			<meta name="description" content="{$description}"/>
			<meta name="keywords" content="{$keywords}"/>
			<meta name="viewport" content="width=device-width, initial-scale=1"/>


	    <!-- PAGE TITLE -->
			<title><xsl:value-of select="$title"/></title>

			<!-- CSS DEPENDECIES -->
			<link rel="stylesheet" type="text/css" href="{$HTTP_LOCATION}public/css/main.css"/>
			<link rel="stylesheet" type="text/css" href="{$HTTP_LOCATION}public/css/styles.css"/>			
      <link rel="stylesheet" type="text/css" href="{$HTTP_LOCATION}public/plugins/bxslider/jquery.bxslider.css"/>
      <script type="text/javascript" src="{$HTTP_LOCATION}public/js/jquery-1.9.1.min.js"></script>

      <script>
	      $( document ).ready(function() {
          $('.bxslider').bxSlider({
              minSlides: 2,
              maxSlides: 2,
              slideWidth: 460,
              slideMargin: 10,
              moveSlides: 1,
              pager: false
          });

          $('.main-slider').bxSlider({
              auto: true,
              controls : false,
          });
	      });
      </script>
		</head>

		<body>

			<!-- MAIN WRAPPER -->
			<div id="wrapper">
				<xsl:call-template name="header"/>
				<xsl:apply-templates select="//XML_PARTIAL_CONTAINER"/>
				<xsl:call-template name="footer"/>
			</div>

			<!-- JAVASCRIPT DEPENDENCIES -->
			<script type="text/javascript" src="{$HTTP_LOCATION}public/js/main.js"/>
      <script type="text/javascript" src="{$HTTP_LOCATION}public/plugins/bxslider/jquery.bxslider.min.js"></script>

      <script type="text/javascript" src="{$HTTP_LOCATION}public/js/bootstrap.min.js"></script>


		</body>

	</html>

</xsl:template>


</xsl:stylesheet>