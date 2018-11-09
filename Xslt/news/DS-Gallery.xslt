<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=1">
				<section class="canhcam-gallery-1">
					<article>
						<div class="container">
							<h2 class="main-title center">
								<xsl:value-of select="Title"></xsl:value-of>
							</h2>
							<div class="row">
								<xsl:apply-templates select="News" mode="Image"></xsl:apply-templates>
							</div>
						</div>
					</article>
				</section>
			</xsl:when>


			<xsl:when test="position()=2">
				<section class="canhcam-gallery-2">
					<article>
						<div class="container">
							<h2 class="main-title center">
								<xsl:value-of select="Title"></xsl:value-of>
							</h2>
							<div class="owl-carousel video-list">
								<xsl:apply-templates select="News" mode="Video"></xsl:apply-templates>
							</div>
						</div>
					</article>
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="News" mode="Image">
		<div class="col-md-4">
			<a class="item">
				<!-- <xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute> -->
				<figure>
					<div class="img">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h4>
							<xsl:value-of select="Title"></xsl:value-of>
						</h4>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="Video">
		<div class="item">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="FullContent"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-fancybox">
					<xsl:text>v-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<div class="img-wrap">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="play-btn">
					<img src="/Data/Sites/1/skins/default/img/play_button.png"></img>
				</div>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>