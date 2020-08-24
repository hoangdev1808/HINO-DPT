<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="panel active" id="panel-1">
            <div class="hinohome2__slide">
                <div class="swiper-container hinohome2__slide__top">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="/NewsList/News" mode="top"></xsl:apply-templates>
                    </div>
                </div>
                <div class="swiper-container-thumbs hinohome2__slide__thumbs">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="/NewsList/News" mode="thumbs"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="top">
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
                    <img src="/Data/Sites/1/skins/default/assets/icons/play-button.png" alt=""/>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="thumbs">
        <div class="swiper-slide">
            <div class="img">
                <img >
                    <xsl:attribute name="src">
                        <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
                <div class="icon-control">
                    <img src="/Data/Sites/1/skins/default/assets/icons/play-button.png" alt=""/>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>