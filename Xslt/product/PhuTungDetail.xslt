<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="hino-pt1 section wow fadeInDown" data-wow-delay=".3s">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6">
                        <div class="hino-pt1__slide">
                            <div class="swiper-container-thumbs hino-pt1__slide__thumb">
                                <div class="swiper-wrapper">
                                    <xsl:apply-templates select="/ProductDetail/ProductImages"></xsl:apply-templates>
                                </div>
                            </div>
                            <div class="swiper-container hino-pt1__slide__top">
                                <div class="swiper-wrapper">
                                    <xsl:apply-templates select="/ProductDetail/ProductImages"></xsl:apply-templates>
                                </div>
                            </div>
                            <div class="swiper-button-next"></div>
                            <div class="swiper-button-prev"></div>
                        </div>
                    </div>
                    <div class="col-xl-6">
                        <div class="hino-pt1__product-detail">
                            <div class="block-title">
                                <h1>
                                    <xsl:value-of disable-output-escaping="yes" select="/ProductDetail/Title"></xsl:value-of>
                                    <xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
                                </h1>
                            </div>
                            <div class="desc">
                                <p>
                                    <xsl:value-of disable-output-escaping="yes" select="/ProductDetail/BriefContent"></xsl:value-of>
                                </p>
                            </div>
                            <div class="table-responsive">
                                <xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FullContent"></xsl:value-of>
                            </div>
                            <div class="hino-pt1__product-detail__contact">
                                <ul>
                                    <li>
                                        <p>Giá</p>
                                    </li>
                                    <li>
                                        <a class="btn btn__new2">
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="/ProductDetail/SubTitle"></xsl:value-of>
                                            </xsl:attribute>
                                            <xsl:attribute name="title">
                                                <xsl:value-of select="/ProductDetail/SubTitle"></xsl:value-of>
                                            </xsl:attribute>
                                            <em class="material-icons">call</em>
                                            <sapn>
                                                <xsl:text>Nhận báo giá</xsl:text>
                                            </sapn>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="Url"></xsl:value-of>
                                            </xsl:attribute>
                                            <xsl:attribute name="title">
                                                <xsl:value-of select="Title"></xsl:value-of>
                                            </xsl:attribute>
                                            <em class="fa fa-facebook"></em>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:value-of select="Url"></xsl:value-of>
                                            </xsl:attribute>
                                            <xsl:attribute name="title">
                                                <xsl:value-of select="Title"></xsl:value-of>
                                            </xsl:attribute>
                                            <em class="fa fa-linkedin"></em>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section hino-pt2 wow fadeInDown" data-wow-delay=".3s">
            <div class="container">
                <div class="hino-pt2__desciption">
                    <div class="tab-panels">
                        <ul class="tabs">
                            <xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Title"></xsl:apply-templates>
                        </ul>
                        <xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Content"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </section>
        <section class="section hino-pt3 wow fadeInDown" data-wow-delay=".3s">
            <div class="container">
                <div class="block-title">
                    <h1>Phụ tùng khác</h1>
                </div>
                <div class="hino-pt3__slide">
                    <div class="swiper-container hino-pt3__slide__other">
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
            <div class="desc">
                <xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="ProductOther">
        <div class="swiper-slide">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <div class="item">
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
                    <div class="name">
                        <p>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </p>
                    </div>
                </div>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>