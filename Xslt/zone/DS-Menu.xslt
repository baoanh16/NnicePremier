<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-menu-1">
			<article>
				<div class="container-fluid px-0">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:if test="position() mod 2 = 1">
			<div class="row no-gutters item item-odd">
				<div class="col-md-6">
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
				</div>
				<div class="col-md-6">
					<div class="text">
						<h2 class="main-title">
							<xsl:value-of select="Title"></xsl:value-of>
						</h2>
						<p>
							<xsl:value-of select="Description"></xsl:value-of>
						</p>
						<div class="btn-wrap">
							<a class="btn btn-viewmore">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="target">
									<xsl:value-of select="Target"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								xem thêm
							</a>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>

		<xsl:if test="position() mod 2 = 0">
			<div class="row no-gutters item item-even">
				<div class="col-md-6 order-md-2">
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
				</div>
				<div class="col-md-6 order-md-1">
					<div class="text">
						<h2 class="main-title">
							<xsl:value-of select="Title"></xsl:value-of>
						</h2>
						<p>
							<xsl:value-of select="Description"></xsl:value-of>
						</p>

						<div class="btn-wrap">
							<a class="btn btn-viewmore">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="target">
									<xsl:value-of select="Target"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								xem thêm
							</a>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>