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
            <section class="dnn-about2 section">
                <div class="container">
                    <div class="row">
                        <xsl:apply-templates select="News" mode="AboutUs"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=2">
            <section class="dnn-about3 section">
                <div class="container">
                    <div class="dnn-about3__content">
                        <div class="block-title">
                            <h1>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h1>
                        </div>
                        <div class="row">
                            <xsl:apply-templates select="News" mode="NangLuc"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=3">
            <section class="dnn-about4 section">
                <div class="container">
                    <div class="row">
                        <xsl:apply-templates select="News" mode="CoSoVatChat"></xsl:apply-templates>
                    </div>
                </div>
            </section>
            <!-- Thông điệp -->
        </xsl:if>
        <xsl:if test="position()=4">
            <section class="dnn-about5 section">
                <div class="container">
                    <div class="swiper-container dnn-about5__slide">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="News" mode="MayMocThietBi"></xsl:apply-templates>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=5">
            <section class="dnn-about6 section">
                <div class="container">
                    <div class="dnn-about6__content">
                        <div class="block-title">
                            <h1>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h1>
                        </div>
                        <div class="dnn-about6__content__list">
                            <ul>
                                <xsl:apply-templates select="News" mode="TrinhDoNhanSu"></xsl:apply-templates>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=6">
            <section class="dnn-about7 section">
                <div class="container">
                    <div class="dnn-about7__content">
                        <div class="block-title">
                            <h1>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h1>
                        </div>
                        <div class="row">
                            <xsl:apply-templates select="News" mode="Top"></xsl:apply-templates>
                            <xsl:apply-templates select="News" mode="Bottom"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="AboutUs">
        <xsl:if test="position()=1">
            <div class="col-xl-6 col-md-6 dnn-about2__left">
                <div class="dnn-about2__left__img">
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
            <div class="col-xl-6 col-md-6 dnn-about2__right">
                <div class="dnn-about2__right__content">
                    <div class="block-title">
                        <h1>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h1>
                    </div>
                    <div class="dnn-about2__right__content__desc">
                        <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="NangLuc">
        <xsl:if test="position()=1">
            <div class="col-xl-3 col-md-6">
                <div class="dnn-about3__content__item">
                    <div class="dnn-about3__content__item__img">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="dnn-about3__content__item__desc">
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()=2">
            <div class="col-xl-3 col-md-6">
                <div class="dnn-about3__content__item">
                    <div class="dnn-about3__content__item__img">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="dnn-about3__content__item__desc">
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()=3">
            <div class="col-xl-3 col-md-6">
                <div class="dnn-about3__content__item">
                    <div class="dnn-about3__content__item__img">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="dnn-about3__content__item__desc">
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()=4">
            <div class="col-xl-3 col-md-6">
                <div class="dnn-about3__content__item">
                    <div class="dnn-about3__content__item__img">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="dnn-about3__content__item__desc">
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="CoSoVatChat">
        <div class="col-xl-6 col-md-6 dnn-about4__left">
            <div class="dnn-about4__left__content">
                <div class="block-title">
                    <h1>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </h1>
                </div>
                <div class="dnn-about4__left__content__desc">
                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                </div>
            </div>
        </div>
        <div class="col-xl-6 col-md-6 dnn-about4__right">
            <div class="dnn-home2__right__img">
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
    <xsl:template match="News" mode="MayMocThietBi">
        <div class="swiper-slide">
            <div class="row">
                <div class="col-md-6">
                    <div class="dnn-about5__slide__left">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <img >
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
                <div class="col-md-6">
                    <div class="dnn-about5__slide__right">
                        <div class="block-title">
                            <h1>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                            </h1>
                        </div>
                        <div class="dnn-about5__slide__right__content">
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text>Máy in Canon</xsl:text>
                            </a>
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="TrinhDoNhanSu">
        <xsl:if test="position()=1">
            <li>
                <h2>0
                    
                    
                    
                    <span class="counter" data-count="6">
                        <xsl:attribute name="data-count">
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </xsl:attribute>
                    </span>
                </h2>
                <p>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </p>
            </li>
        </xsl:if>
        <xsl:if test="position()=2">
            <li>
                <h2>
                    <span class="counter" data-count="6">
                        <xsl:attribute name="data-count">
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </xsl:attribute>
                    </span>
                </h2>
                <p>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </p>
            </li>
        </xsl:if>
        <xsl:if test="position()=3">
            <li>
                <h2>0
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    <span class="counter" data-count="6">
                        <xsl:attribute name="data-count">
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </xsl:attribute>
                    </span>
                </h2>
                <p>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </p>
            </li>
        </xsl:if>
        <xsl:if test="position()=4">
            <li>
                <h2>
                    <span class="counter" data-count="6">
                        <xsl:attribute name="data-count">
                            <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                        </xsl:attribute>
                    </span>
                </h2>
                <p>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </p>
            </li>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Top">
        <xsl:if test="position()=1">
            <div class="col-xl-4 col-md-6">
                <div class="dnn-about7__content__img">
                    <a>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text>image</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <img >
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
        </xsl:if>
        <xsl:if test="position()=2">
            <div class="col-xl-4 col-md-6">
                <div class="dnn-about7__content__img">
                    <a>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text>image</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <img >
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
        </xsl:if>
        <xsl:if test="position()=3">
            <div class="col-xl-4 col-md-6">
                <div class="dnn-about7__content__img">
                    <a>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text>image</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <img >
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
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Bottom">
        <xsl:if test="position()=4">
            <div class="col-xl-6 col-md-12">
                <div class="dnn-about7__content__img bottom mb-0">
                    <a>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text>image</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <img >
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
        </xsl:if>
        <xsl:if test="position()=5">
            <div class="col-xl-6 col-md-12">
                <div class="dnn-about7__content__img bottom mb-0">
                    <a>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text>image</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <img >
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
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>