<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position()=1">
            <section class="hino-service1 section">
                <div class="container">
                    <div class="block-title border__bottom">
                        <h1>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h1>
                    </div>
                    <xsl:apply-templates select="News" mode="Section1"></xsl:apply-templates>
                </div>
                <div id="hino-cop" style="display: none;">
                    <div class="container">
                        <div class="content">
                            <xsl:apply-templates select="News" mode="Popup1"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=2">
            <section class="section hino-service2">
                <div class="container">
                    <div class="block-title border__bottom">
                        <h1>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h1>
                    </div>
                    <div class="row">
                        <div class="col-xl-6 col-md-12 hino-news2__news__left">
                            <xsl:apply-templates select="News" mode="Left"></xsl:apply-templates>
                        </div>
                        <div class="col-xl-6 col-md-12 hino-news2__news__right">
                            <div class="row">
                                <xsl:apply-templates select="News" mode="Right"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="hino-cop" style="display: none;">
                    <div class="container">
                        <div class="content">
                            <xsl:apply-templates select="News" mode="Popup2"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=3">
            <section class="section hino-service3">
                <div class="container">
                    <div class="block-title border__bottom">
                        <h1>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h1>
                    </div>
                    <div class="hino-service3__content acc">
                        <xsl:apply-templates select="News" mode="Section3"></xsl:apply-templates>
                    </div>
                </div>
                <div id="hino-cop" style="display: none;">
                    <div class="container">
                        <div class="content">
                            <xsl:apply-templates select="News" mode="Popup3"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Section1">
        <xsl:if test="position()=1">
            <div class="hino-service1__content">
                <div class="row">
                    <div class="col-xl-6 col-md-12">
                        <div class="hino-service1__content__img">
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
                    <div class="col-xl-6 col-md-12">
                        <div class="content">
                            <div class="hino-service1__content__title">
                                <h2>
                                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                </h2>
                            </div>
                            <div class="hino-service1__content__desc">
                                <p>
                                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                                </p>
                            </div>
                            <a class="btn btn__new2">
                                <xsl:attribute name="data-fancybox"></xsl:attribute>
                                <xsl:attribute name="href">
                                    <xsl:text>#hino-cop</xsl:text>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text>Xem thêm</xsl:text>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()=2">
            <div class="hino-service1__content">
                <div class="row">
                    <div class="col-xl-6 col-md-12">
                        <div class="content">
                            <div class="hino-service1__content__title">
                                <h2>
                                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                </h2>
                            </div>
                            <div class="hino-service1__content__desc">
                                <p>
                                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                                </p>
                            </div>
                            <a class="btn btn__new2">
                                <xsl:attribute name="data-fancybox"></xsl:attribute>
                                <xsl:attribute name="href">
                                    <xsl:text>#hino-cop</xsl:text>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text>Xem thêm</xsl:text>
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-12">
                        <div class="hino-service1__content__img">
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
            <div class="hino-service1__content">
                <div class="row">
                    <div class="col-xl-6 col-md-12">
                        <div class="hino-service1__content__img">
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
                    <div class="col-xl-6 col-md-12">
                        <div class="content">
                            <div class="hino-service1__content__title">
                                <h2>
                                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                </h2>
                            </div>
                            <div class="hino-service1__content__desc">
                                <p>
                                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                                </p>
                            </div>
                            <a class="btn btn__new2">
                                <xsl:attribute name="data-fancybox"></xsl:attribute>
                                <xsl:attribute name="href">
                                    <xsl:text>#hino-cop</xsl:text>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text>Xem thêm</xsl:text>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Left">
        <xsl:if test="position()=1">
            <div class="hino-news2__news__left__img">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="data-fancybox">
                        <xsl:text>images</xsl:text>
                    </xsl:attribute>
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </a>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Right">
        <xsl:if test="position()>1 and position()&lt;6">
            <div class="col-xl-6 col-md-6">
                <div class="hino-news2__news__right__item">
                    <div class="hino-news2__news__right__item__img">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="data-fancybox">
                                <xsl:text>images</xsl:text>
                            </xsl:attribute>
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </a>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Section3">
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
    <xsl:template match="News" mode="Popup1">
        <xsl:if test="position()=1">
            <div class="block-title">
                <h1>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </h1>
            </div>
            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Popup2">
        <xsl:if test="position()=2">
            <div class="block-title">
                <h1>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </h1>
            </div>
            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Popup3">
        <xsl:if test="position()=3">
            <div class="block-title">
                <h1>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </h1>
            </div>
            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>