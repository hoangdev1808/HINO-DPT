<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="row">
            <xsl:apply-templates select="/NewsList/News" mode="Big"></xsl:apply-templates>
            <xsl:apply-templates select="/NewsList/News" mode="Small"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Big">
        <xsl:if test="position()&gt;0 and position()&lt;3">
            <div class="col-xl-6 col-12 dnn-news2__item">
                <div class="dnn-news2__item__img">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
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
                <div class="dnn-news2__item__desc">
                    <div class="dnn-news2__item__desc__date">
                        <span class="material-icons">event_note</span>
                        <div class="date">
                            <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                    <div class="dnn-news2__item__desc__title">
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
    <xsl:template match="News" mode="Small">
        <xsl:if test="position()>2">
            <div class="col-xl-4 col-sm-6 col-12 dnn-news2__item" id="small-img">
                <div class="dnn-news2__item__img">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
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
                <div class="dnn-news2__item__desc">
                    <div class="dnn-news2__item__desc__date">
                        <span class="material-icons">event_note</span>
                        <div class="date">
                            <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                    <div class="dnn-news2__item__desc__title">
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