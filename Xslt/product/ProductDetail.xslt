<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="hino-detail1 section wow fadeInDown" data-wow-delay=".3s">
            <div class="container">
                <div class="hino-detail1__content">
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="hino-detail1__content__left">
                                <div class="block-title">
                                    <h1>
                                        <xsl:value-of disable-output-escaping="yes" select="/ProductDetail/Title"></xsl:value-of>
                                    </h1>
                                </div>
                                <ul>
                                    <li>
                                        <p>Giá</p>
                                    </li>
                                    <li>
                                        <a class="btn btn__new2" href="">
                                            <xsl:attribute name="data-toggle">
                                                <xsl:text>modal</xsl:text>
                                            </xsl:attribute>
                                            <xsl:attribute name="data-target">
                                                <xsl:text>#formbaogia</xsl:text>
                                            </xsl:attribute>
                                            <em class="material-icons">call</em>
                                            <span>
                                                <xsl:text>Nhận báo giá</xsl:text>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                                <xsl:value-of select="/ProductDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
                                            </xsl:attribute>
                                            <em class="fa fa-facebook"></em>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:text>https://www.linkedin.com/shareArticle?url=</xsl:text>
                                                <xsl:value-of select="/ProductDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
                                            </xsl:attribute>
                                            <em class="fa fa-linkedin"></em>
                                        </a>
                                    </li>
                                </ul>
                                <div class="hino-detail1__content__left__desc">
                                    <p>
                                        <xsl:value-of disable-output-escaping="yes" select="/ProductDetail/BriefContent"></xsl:value-of>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6">
                            <div class="hino-detail1__content__right">
                                <xsl:apply-templates select="/ProductDetail/ProductImages" mode="ImageTop"></xsl:apply-templates>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section hino-detail2 wow fadeInDown" data-wow-delay=".3s">
            <div class="container">
                <div class="block-title">
                    <h1>Thông tin chi tiết</h1>
                </div>
                <div class="tab-panels">
                    <ul class="tabs">
                        <xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Title"></xsl:apply-templates>
                    </ul>
                    <xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Content"></xsl:apply-templates>
                </div>
            </div>
        </section>
        <section class="section hino-detail3 wow fadeInDown" data-wow-delay=".3s">
            <div class="container">
                <div class="block-title">
                    <h1>Hình ảnh</h1>
                </div>
                <div class="hino-detail3__slide">
                    <div class="swiper-container hino-detail3__slide__top">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="/ProductDetail/ProductImages"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-container-thumbs hino-detail3__slide__thumb">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="/ProductDetail/ProductImages"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section hino-detail4 wow fadeInDown" data-wow-delay=".3s">
            <div class="container">
                <div class="block-title">
                    <h1>Xe tải Hino khác</h1>
                </div>
                <div class="hino-detail4__other">
                    <div class="swiper-container hino-detail4__other__slide">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="ProductImages" mode="ImageTop">
        <xsl:if test="position()=2">
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
        </xsl:if>
    </xsl:template>
    <xsl:template match="ProductAttributes" mode="Title">
        <li>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="rel">
                <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
        </li>
    </xsl:template>
    <xsl:template match="ProductAttributes" mode="Content">
        <div class="panel">
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">panel-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:if test="position() = 1">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">panel active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
        </div>
    </xsl:template>
    <xsl:template match="ProductImages">
        <div class="swiper-slide">
            <div class="img">
                <img>
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
    <xsl:template match="ProductOther">
        <div class="swiper-slide">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="Title">
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <div class="hino-detail4__other__slide__img">
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="hino-detail4__other__slide__name">
                    <p>
                        <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                    </p>
                </div>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>