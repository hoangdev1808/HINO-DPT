<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="section hino-helper1">
            <div class="container">
                <div class="block-title border__bottom">
                    <h1>hỗ trợ khách hàng</h1>
                </div>
                <div class="hino-service3__content acc">
                    <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <div class="hino-service3__content__card acc__card">
            <div class="hino-service3__content__card__title acc__title">
                <p><xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of></p>
                <em class="lnr lnr-chevron-down"></em>
            </div>
            <div class="hino-service3__content__card__body acc__panel">
                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>