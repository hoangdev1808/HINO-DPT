<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="block-title border__bottom">
            <h1>
                <xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
            </h1>
        </div>
        <div class="hino-service3__content acc">
            <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="hino-service3__content__card acc__card">
            <div class="hino-service3__content__card__title acc__title">
                <p>
                    <xsl:if test="position()>=10">
                        <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                        <xsl:text>. </xsl:text>
                    </xsl:if>
                    <xsl:if test="position() !=10">
                        <xsl:text>0</xsl:text>
                        <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                        <xsl:text>. </xsl:text>
                    </xsl:if>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </p>
                <em class="lnr lnr-chevron-down"></em>
            </div>
            <div class="hino-service3__content__card__body acc__panel">
                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>