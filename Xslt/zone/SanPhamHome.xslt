<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="swiper-container hinohome1__slide__product">
            <div class="swiper-wrapper">
                <xsl:apply-templates select="/ZoneList/Zone/Zone/Zone"></xsl:apply-templates>
            </div>
        </div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="swiper-slide">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <div class="hinohome1__slide__product__img">
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="hinohome1__slide__product__name">
                    <p>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </p>
                </div>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>