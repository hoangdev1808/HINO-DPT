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
                <div class="slide relative">
                    <div class="news">
                        <div class="row">
                            <div class="col-xl-6 col-md-12 left">
                                <xsl:apply-templates select="/NewsList/News" mode="BigNews"></xsl:apply-templates>
                            </div>
                            <div class="col-xl-6 col-md-12 right">
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
            <div class="img">
                <img >
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
            <div class="content">
                <div class="item__date">
                    <span class="lnr lnr-calendar-full"></span>
                    <div class="date">
                        <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                    </div>
                </div>
                <div class="title">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                    </a>
                </div>
                <div class="desc">
                    <p>
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </p>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="SmallNews">
        <xsl:if test="position()>1 and position()&lt;6">
            <div class="col-xl-6 col-lg-6">
                <div class="item">
                    <div class="img">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="content">
                        <div class="item__date">
                            <span class="lnr lnr-calendar-full"></span>
                            <div class="date">
                                <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                            </div>
                        </div>
                        <div class="title">
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>