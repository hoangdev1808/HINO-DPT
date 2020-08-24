<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="swiper-container hinohome-banner__slide">
            <div class="swiper-wrapper">
                <xsl:apply-templates select="/BannerList/Banner" mode="Slider"></xsl:apply-templates>
            </div>
            <a class="crolldown" href="#dnn-home1">
                <span></span>
                <span></span>
                <span></span>
            </a>
        </div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </xsl:template>
    <xsl:template match="Banner" mode="Slider">
        <xsl:if test="position()=1">
            <div class="swiper-slide">
                <a class="swiper-inner">
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </a>
                <div class="content">
                    <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()>1">
            <div class="swiper-slide">
                <a class="swiper-inner">
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </a>
                <div class="content">
                    <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>