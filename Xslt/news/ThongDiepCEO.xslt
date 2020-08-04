<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <!-- Thông điệp -->
        <div class="row">
        <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <xsl:if test="position()=1">
            <div class="col-xl-6 col-md-6 dnn-home1__left">
            <div class="dnn-home1__left__img">
                <img >
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
        </div>
        <div class="col-xl-6 col-md-6 dnn-home1__right">
            <div class="dnn-home1__right__content">
                <div class="block-title">
                    <h1><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h1>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <div class="dnn-home1__right__conten__desc">
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </div>
                <a class="btn btn__new">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <span>xem thêm
                        <em class="ri-arrow-right-line"></em>
                    </span>
                </a>
               
            </div>
        </div>
        </xsl:if>
        
    </xsl:template>
</xsl:stylesheet>