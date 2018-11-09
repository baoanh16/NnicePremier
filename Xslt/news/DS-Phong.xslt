<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-room-1">
			<article>
				<div class="container-fluid px-0">
					<h2 class="main-title center">
						<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
					</h2>
					<div class="row no-gutters">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<div class="col-md-6">
			<div class="item">
				<figure>
					<div class="img">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
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
					</div>
					<figcaption>
						<h4>
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="Title"></xsl:value-of>
							</a>
						</h4>
						<div class="btn-wrap">
							<div class="btn view-img">Hình ảnh</div>
							<div class="d-none img-normal">
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
							</div>
							<a class="btn view-panorama">
								<!-- <xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute> -->
								View panorama
							</a>
						</div>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>


	<xsl:template match="NewsImages" mode="Album1">
		<a data-fancybox="room-img-1" rel="room-img-1">
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="data-caption">
				<xsl:text>&lt;div class='d-flex caption-wrap'&gt;&lt;h4&gt;</xsl:text>
				<xsl:value-of select="../Title"></xsl:value-of>
				<xsl:text>&lt;/h4&gt;&lt;p&gt;Loại phòng: &lt;strong&gt;</xsl:text>
				<xsl:value-of select="../SubTitle"></xsl:value-of>
				<xsl:text>&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Sức chứa: &lt;strong&gt;</xsl:text>
				<xsl:value-of select="../BriefContent"></xsl:value-of>
				<xsl:text>&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Giá phòng: &lt;strong&gt;</xsl:text>
				<xsl:value-of select="../FullContent"></xsl:value-of>
				<xsl:text>&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;</xsl:text>
			</xsl:attribute>
			<img class="img-fluid">
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</a>
	</xsl:template>
	
	<xsl:template match="NewsImages" mode="Album2">
		<a data-fancybox="room-img-2" rel="room-img-2">
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="data-caption">
				<xsl:text>&lt;div class='d-flex caption-wrap'&gt;&lt;h4&gt;</xsl:text>
				<xsl:value-of select="../Title"></xsl:value-of>
				<xsl:text>&lt;/h4&gt;&lt;p&gt;Loại phòng: &lt;strong&gt;</xsl:text>
				<xsl:value-of select="../SubTitle"></xsl:value-of>
				<xsl:text>&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Sức chứa: &lt;strong&gt;</xsl:text>
				<xsl:value-of select="../BriefContent"></xsl:value-of>
				<xsl:text>&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Giá phòng: &lt;strong&gt;</xsl:text>
				<xsl:value-of select="../FullContent"></xsl:value-of>
				<xsl:text>&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;</xsl:text>
			</xsl:attribute>
			<img class="img-fluid">
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</a>
	</xsl:template>

	<xsl:template match="NewsImages" mode="Album3">
		<a data-fancybox="room-img-3" rel="room-img-3">
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="data-caption">
				<xsl:text>&lt;div class='d-flex caption-wrap'&gt;&lt;h4&gt;</xsl:text>
				<xsl:value-of select="../Title"></xsl:value-of>
				<xsl:text>&lt;/h4&gt;&lt;p&gt;Loại phòng: &lt;strong&gt;</xsl:text>
				<xsl:value-of select="../SubTitle"></xsl:value-of>
				<xsl:text>&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Sức chứa: &lt;strong&gt;</xsl:text>
				<xsl:value-of select="../BriefContent"></xsl:value-of>
				<xsl:text>&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Giá phòng: &lt;strong&gt;</xsl:text>
				<xsl:value-of select="../FullContent"></xsl:value-of>
				<xsl:text>&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;</xsl:text>
			</xsl:attribute>
			<img class="img-fluid">
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</a>
	</xsl:template>

	<xsl:template match="NewsImages" mode="Album4">
		<a data-fancybox="room-img-4" rel="room-img-4">
			<xsl:attribute name="href">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="data-caption">
				<xsl:text>&lt;div class='d-flex caption-wrap'&gt;&lt;h4&gt;</xsl:text>
				<xsl:value-of select="../Title"></xsl:value-of>
				<xsl:text>&lt;/h4&gt;&lt;p&gt;Loại phòng: &lt;strong&gt;</xsl:text>
				<xsl:value-of select="../SubTitle"></xsl:value-of>
				<xsl:text>&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Sức chứa: &lt;strong&gt;</xsl:text>
				<xsl:value-of select="../BriefContent"></xsl:value-of>
				<xsl:text>&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Giá phòng: &lt;strong&gt;</xsl:text>
				<xsl:value-of select="../FullContent"></xsl:value-of>
				<xsl:text>&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;</xsl:text>
			</xsl:attribute>
			<img class="img-fluid">
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</a>
	</xsl:template>
</xsl:stylesheet>