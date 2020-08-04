<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="dnn-field2 section">
            <div class="container">
                <div class="block-title">
                    <h1>
                        <xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
                    </h1>
                </div>
                <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="News">
        <xsl:if test="position()=1">
            <div class="dnn-field2__content">
                <div class="row">
                    <!-- Gia công cơ khí -->
                    <div class="col-xl-6 col-md-6">
                        <div class="dnn-field2__content__img">
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
                    <div class="col-xl-6 col-md-6">
                        <div class="dnn-field2__content__desc">
                            <h2>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h2>
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()=2">
            <div class="dnn-field2__content">
                <div class="row">
                    <!-- Đúc kim loại -->
                    <div class="col-xl-6 col-md-6">
                        <div class="dnn-field2__content__desc">
                            <h2>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h2>
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <div class="dnn-field2__content__img">
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
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()=3">
            <div class="dnn-field2__content">
                <div class="row">
                    <!-- Thiết kế, gia công khuôn mẫu -->
                    <div class="col-xl-6 col-md-6">
                        <div class="dnn-field2__content__img">
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
                    <div class="col-xl-6 col-md-6">
                        <div class="dnn-field2__content__desc">
                            <h2>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h2>
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()=4">
            <div class="dnn-field2__content">
                <div class="row">
                    <!-- Rèn, dập, cán kim loại -->
                    <div class="col-xl-6 col-md-6">
                        <div class="dnn-field2__content__desc">
                            <h2>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h2>
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <div class="dnn-field2__content__img">
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
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()=5">
            <div class="dnn-field2__content">
                <div class="row">
                    <!-- Sản xuất lõi khuôn đúc  -->
                    <div class="col-xl-6 col-md-6">
                        <div class="dnn-field2__content__img">
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
                    <div class="col-xl-6 col-md-6">
                        <div class="dnn-field2__content__desc">
                            <h2>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h2>
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>