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
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-fancybox">
					<xsl:text>image-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="rel">
					<xsl:text>image-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
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
			<div class="d-none">
				<xsl:if test="position()=1">
					<xsl:apply-templates select="NewsImages" mode="Album1"></xsl:apply-templates>
				</xsl:if>
				<xsl:if test="position()=2">
					<xsl:apply-templates select="NewsImages" mode="Album2"></xsl:apply-templates>
				</xsl:if>
				<xsl:if test="position()=3">
					<xsl:apply-templates select="NewsImages" mode="Album3"></xsl:apply-templates>
				</xsl:if>
				<xsl:if test="position()=4">
					<xsl:apply-templates select="NewsImages" mode="Album4"></xsl:apply-templates>
				</xsl:if>
				<xsl:if test="position()=5">
					<xsl:apply-templates select="NewsImages" mode="Album5"></xsl:apply-templates>
				</xsl:if>
				<xsl:if test="position()=6">
					<xsl:apply-templates select="NewsImages" mode="Album6"></xsl:apply-templates>
				</xsl:if>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="NewsImages" mode="Album1">
		<xsl:if test="position()>1">
			<a data-fancybox="image-1" rel="image-1">
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</a>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Album2">
		<xsl:if test="position()>1">
		<a data-fancybox="image-2" rel="image-2">
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</a>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Album3">
		<xsl:if test="position()>1">
		<a data-fancybox="image-3" rel="image-3">
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</a>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Album4">
		<xsl:if test="position()>1">
		<a data-fancybox="image-4" rel="image-4">
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</a>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Album5">
		<xsl:if test="position()>1">
		<a data-fancybox="image-5" rel="image-5">
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</a>
		</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Album6">
		<xsl:if test="position()>1">
		<a data-fancybox="image-6" rel="image-6">
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</a>
		</xsl:if>
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