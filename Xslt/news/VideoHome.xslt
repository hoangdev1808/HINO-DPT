<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
		<ul>
			<li class="active">
				<a href="">Video</a>
			</li>
			<li>
				<a href="">Hình ảnh</a>
			</li>
		</ul>
		<div class="swiper-container hinohome2__slide__top">
			<div class="swiper-wrapper">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</div>
		<div class="hinohome2__slide__thumbs">
			<div class="swiper-container-thumbs hinohome2__slide__thumbs__video">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</div>
    </xsl:template>
    <xsl:template match="News">
        <div class="swiper-slide">
            <div class="img">
                <img >
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
                <div class="icon-control">
                    <a>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text>popup</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="BriefContent"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <img src="/Data/Sites/1/skins/default/assets/icons/play-button.png" alt=""/>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>