<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="hino-pro2__right">
            <div class="hino-pro2__right__title">
                <h1>
                    <xsl:value-of disable-output-escaping="yes" select="/ProductList/ZoneTitle"></xsl:value-of>
                </h1>
            </div>
            <div class="row">
                <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Product">
        <xsl:if test="position()&lt;10">
            <div class="col-xl-4 col-md-6 col-sm-6">
                <div class="hino-pro2__right__item">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <div class="hino-pro2__right__item__img">
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
                        </div>
                        <div class="hino-pro2__right__item__desc">
                            <p>
                               <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                               <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                    </a>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>