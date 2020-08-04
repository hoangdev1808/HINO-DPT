<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="block-title">
            <h1>
                <xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
            </h1>
        </div>
        <div class="row">
            <div class="col-xl-4 col-md-12">
                <div class="row">
                    <xsl:apply-templates select="/NewsList/News" mode="Left"></xsl:apply-templates>
                </div>
            </div>
            <xsl:apply-templates select="/NewsList/News" mode="Middle"></xsl:apply-templates>
            <div class="col-xl-4 col-md-6 col-sm-6">
                <div class="row">
                    <xsl:apply-templates select="/NewsList/News" mode="Right"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Left">
        <xsl:if test="position()&gt;0 and position()&lt;3">
            <div class="col-xl-12 col-md-6">
                <div class="dnn-home4__content__img">
                    <div class="dnn-home4__content__img__small">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="dnn-home4__content__img__desc">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="Title"></xsl:value-of>
                        </a>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Middle">
        <xsl:if test="position()=3">
            <div class="col-xl-4 col-md-6 col-sm-6">
                <div class="dnn-home4__content__img">
                    <div class="dnn-home4__content__img__big">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="dnn-home4__content__img__desc">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="Title"></xsl:value-of>
                        </a>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Right">
        <xsl:if test="position()&gt;3 and position()&lt;6">
            <div class="col-xl-12">
                <div class="dnn-home4__content__img">
                    <div class="dnn-home4__content__img__small">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="dnn-home4__content__img__desc">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="Title"></xsl:value-of>
                        </a>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>