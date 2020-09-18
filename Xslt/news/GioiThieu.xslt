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
            <section class="section hino-about1">
                <xsl:attribute name="id">
                    <xsl:text>about-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="block-title border__bottom">
                        <h1>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h1>
                    </div>
                    <xsl:apply-templates select="News" mode="TongQuan"></xsl:apply-templates>
                    <xsl:apply-templates select="News" mode="Hino"></xsl:apply-templates>
                </div>
                <div id="hino-cop" style="display: none;">
                    <div class="container">
                        <div class="content">
                            <xsl:apply-templates select="News" mode="Popup"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=2">
            <section class="section hino-about2">
                <xsl:attribute name="id">
                    <xsl:text>about-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="block-title">
                        <h1>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h1>
                    </div>
                    <div class="hino-about2__slide relative">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-container hino-about2__slide__thumbs">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="Thumbs"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-container hino-about2__slide__content">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="Slider"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=3">
            <section class="section hino-about3">
                <xsl:attribute name="id">
                    <xsl:text>about-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="row">
                        <xsl:apply-templates select="News" mode="Tamnhin"></xsl:apply-templates>
                        <xsl:apply-templates select="News" mode="Sumenh"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=4">
            <section class="section hino-about4">
                <xsl:attribute name="id">
                    <xsl:text>about-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="block-title border__bottom">
                        <h1>
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                        </h1>
                    </div>
                    <div class="row">
                        <xsl:apply-templates select="News" mode="Giatri"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=5">
            <section class="section hinohome8">
                <xsl:attribute name="id">
                    <xsl:text>about-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <div class="container">
                    <div class="block-title border__bottom">
                        <h1>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h1>
                    </div>
                    <div class="hinohome8__slide relative">
                        <div class="swiper-container hinohome8__slide__partner">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="News" mode="Doitac"></xsl:apply-templates>
                            </div>
                        </div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="TongQuan">
        <xsl:if test="position()=1">
            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Hino">
        <xsl:if test="position()=2">
            <div class="row">
                <div class="col-xl-6 col-md-6">
                    <div class="hino-about1__left">
                        <div class="hino-about1__left__content">
                            <div class="block-title">
                                <h1>
                                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                </h1>
                            </div>
                            <div class="hino-about1__left__content__desc">
                                <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                            </div>
                            <a class="btn btn__new2">
                                <xsl:attribute name="data-fancybox">
                                    <xsl:text>popup</xsl:text>
                                </xsl:attribute>
                                <xsl:attribute name="href">
                                    <xsl:text>#hino-cop</xsl:text>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text>Xen thêm</xsl:text>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-md-6">
                    <div class="hino-about1__right">
                        <div class="hino-about1__right__img">
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
    </xsl:template>
    <xsl:template match="News" mode="Popup">
        <xsl:if test="position()=2">
            <div class="block-title">
                <h1>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </h1>
            </div>
            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Thumbs">
        <div class="swiper-slide">
            <div class="time">
                <span>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </span>
            </div>
            <div class="box-content">
                <p class="limit-text">
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </p>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Slider">
        <div class="swiper-slide">
            <div class="row">
                <div class="col-xl-6 col-md-6 col-sm-6 img">
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="col-xl-6 col-md-6 col-sm-6 content">
                    <div class="desc">
                        <div class="title">
                            <p>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </p>
                        </div>
                        <div class="limit-text">
                            <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Tamnhin">
        <xsl:if test="position()=1">
            <div class="col-xl-6 col-md-6 col-sm-6 hino-about3__content">
                <div class="hino-about3__content__img">
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="hino-about3__content__title">
                    <h2>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </h2>
                </div>
                <div class="hino-about3__content__desc">
                    <p>
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </p>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Sumenh">
        <xsl:if test="position()=2">
            <div class="col-xl-6 col-dm-6 col-sm-6 hino-about3__content">
                <div class="hino-about3__content__img">
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="hino-about3__content__title">
                    <h2>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </h2>
                </div>
                <div class="hino-about3__content__desc">
                    <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Giatri">
        <div class="col-xl-4 col-md-6 col-sm-6 hino-about4__item">
            <div class="hino-about4__item__content">
                <div class="hino-about4__item__content__img">
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="hino-about4__item__content__title">
                    <h2>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </h2>
                </div>
                <div class="hino-about4__item__content__desc">
                    <p>
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="Doitac">
        <div class="swiper-slide">
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
    </xsl:template>
</xsl:stylesheet>