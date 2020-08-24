<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="hinohome7 section">
            <div class="container">
                <div class="block-title border__bottom">
                    <h1><xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of></h1>
                </div>
                <div class="hinohome7__slide relative">
                    <div class="hinohome7__slide__news">
                        <div class="row">
                            <div class="col-xl-6 col-md-12 hinohome7__slide__news__left">
                                <xsl:apply-templates select="/NewsList/News" mode="BigNews"></xsl:apply-templates>
                            </div>
                            <div class="col-xl-6 col-md-12 hinohome7__slide__news__right">
                                <div class="row">
                                    <xsl:apply-templates select="/NewsList/News" mode="SmallNews"></xsl:apply-templates>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News" mode="BigNews">
        <xsl:if test="position()=1">
            <div class="hinohome7__slide__news__left__img">
                <img >
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
            <div class="hinohome7__slide__news__left__content">
                <div class="item__date">
                    <span class="lnr lnr-calendar-full"></span>
                    <div class="date">
                        <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                    </div>
                </div>
                <div class="hinohome7__slide__news__left__content__title lcl lcl-1">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </a>
                </div>
                <div class="hinohome7__slide__news__left__content__desc">
                    <p>
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </p>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="SmallNews">
        <xsl:if test="position()>1 and position()&lt;6">
            <div class="col-xl-6 col-md-6">
                <div class="hinohome7__slide__news__right__item">
                    <div class="hinohome7__slide__news__right__item__img">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="hinohome7__slide__news__right__item__content">
                        <div class="item__date">
                            <span class="lnr lnr-calendar-full"></span>
                            <div class="date">
                                <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                            </div>
                        </div>
                        <div class="hinohome7__slide__news__right__item__content__title">
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>