<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="hino-news2__image">
            <div class="row">
                <div class="col-xl-6 col-md-12 hino-news2__image__left">
                    <xsl:apply-templates select="/NewsList/News" mode="BigImage"></xsl:apply-templates>
                </div>
                <div class="col-xl-6 col-md-12 hino-news2__image__right">
                    <div class="row">
                        <xsl:apply-templates select="/NewsList/News" mode="SmallImage"></xsl:apply-templates>
                    </div>
                </div>
                <div class="col-xl-6 col-md-12 hino-news2__image__right">
                    <div class="row">
                        <xsl:apply-templates select="/NewsList/News" mode="SmallImageBot"></xsl:apply-templates>
                    </div>
                </div>
                <div class="col-xl-6 col-md-12 hino-news2__image__left">
                    <xsl:apply-templates select="/NewsList/News" mode="BigImageBot"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="BigImage">
        <xsl:if test="position()=1">
            <div class="hino-news2__image__left__img">
                <a>
                    <xsl:attribute name="data-fancybox">
                        <xsl:text>popup</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="href">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
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
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="SmallImage">
        <xsl:if test="position()>1 and position()&lt;6">
            <div class="col-xl-6 col-md-6">
                <div class="hino-news2__image__right__item">
                    <div class="hino-news2__image__right__item__img">
                        <a>
                            <xsl:attribute name="data-fancybox">
                                <xsl:text>popup</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="href">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
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
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="SmallImageBot">
        <xsl:if test="position()>5 and position()&lt;10">
            <div class="col-xl-6 col-md-6">
                <div class="hino-news2__image__right__item">
                    <div class="hino-news2__image__right__item__img">
                        <a>
                            <xsl:attribute name="data-fancybox">
                                <xsl:text>popup</xsl:text>
                            </xsl:attribute>
                            <xsl:attribute name="href">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
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
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="BigImageBot">
        <xsl:if test="position()=10">
            <div class="hino-news2__image__left__img">
                <a>
                    <xsl:attribute name="data-fancybox">
                        <xsl:text>popup</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="href">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
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
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>