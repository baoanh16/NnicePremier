<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-menu-detail-2">
			<article>
				<div class="container">
					<h2 class="main-title center">
						<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
					</h2>
					<div class="row">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<div class="col-6 col-sm-4 col-md-3">
			<div class="item">
				<a class="item">
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
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
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>