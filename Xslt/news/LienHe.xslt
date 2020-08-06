<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="section hino-contact1">
            <div class="container">
                <div class="block-title border__bottom">
                    <h1>
                        <xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
                    </h1>
                </div>
                <div class="row">
                    <div class="col-xl-4 hino-helper2__left">
                        <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
                    </div>
                    <div class="col-xl-8">
                        <div class="map-wrapper">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d59398.78008086362!2d105.80145140642973!3d21.491115666289687!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1zVOG7lSAxMCwgUGjGsOG7nW5nIE3hu48gQ2jDqCwgVGjDoG5oIHBo4buRIFPDtG5nIEPDtG5nLCBU4buJbmggVGjDoWkgTmd1ecOqbg!5e0!3m2!1sen!2s!4v1595384133322!5m2!1sen!2s" width="100%" height="" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <div class="hino-helper2__left__content">
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>hino-helper2__left__content active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="data-href">
                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
            </xsl:attribute>
            <div class="hino-helper2__left__content__title">
                <h2>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </h2>
            </div>
            <div class="hino-helper2__left__content__desc">
                <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>