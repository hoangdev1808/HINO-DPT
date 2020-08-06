<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <xsl:apply-templates select="/BannerList/Banner" mode="Banner"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Banner" mode="Banner">
        <div class="hino-banner__pages">
            <xsl:attribute name="setBackground">
                <xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <div class="container">
                <div class="hino-banner__pages__content">
                    <div class="desc">
                        <h1><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></h1>
                        <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
                        <a class="btn btn__banner">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:text>Liên hệ ngay</xsl:text>
						</a>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
