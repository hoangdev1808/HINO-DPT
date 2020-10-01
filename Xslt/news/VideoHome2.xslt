<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="section hinohome6">
            <div class="container">
                <div class="block-title border__bottom">
                    <h1>video</h1>
                </div>
                <div class="hinohome6__slide">
                    <div class="swiper-container hinohome6__slide__video">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <div class="swiper-slide">
            <div class="hinohome6__slide__video__img">
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
            <div class="hinohome6__slide__video__name">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="Title"></xsl:value-of>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>