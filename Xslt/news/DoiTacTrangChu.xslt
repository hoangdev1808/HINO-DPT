<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <!-- Đối tác khách hàng -->
        <div class="row">
            <div class="col-xl-3 col-md-4">
                <div class="block-title">
                    <h1>
                        <xsl:value-of select="/NewsList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
                    </h1>
                </div>
            </div>
            <div class="col-xl-9 col-md-8">
                <div class="row">
                    <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-xl-3 col-md-6 col-sm-6">
            <div class="dnn-home7__item">
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
    </xsl:template>
</xsl:stylesheet>