<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="hino-news2__video">
            <div class="row">
                <div class="col-xl-6 col-md-12 hino-news2__video__left">
                    <xsl:apply-templates select="/NewsList/News" mode="BigVideo"></xsl:apply-templates>
                </div>
                <div class="col-xl-6 col-md-12 hino-news2__video__right">
                    <div class="row">
                        <xsl:apply-templates select="/NewsList/News" mode="SmallVideo"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="BigVideo">
        <xsl:if test="position()=1">
            <div class="hino-news2__video__left__img">
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
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="SmallVideo">
        <xsl:if test="position()>1 and position()&lt;6">
            <div class="col-xl-6 col-md-6">
                <div class="hino-news2__video__right__item">
                    <div class="hino-news2__video__right__item__img">
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
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>