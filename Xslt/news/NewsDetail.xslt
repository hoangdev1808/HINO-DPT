<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="section hino-news-detail wow fadeInDown" data-wow-delay=".3s">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9">
                        <div class="block-title">
                            <h1>
                                <xsl:value-of select="/NewsDetail/Title" disable-output-escaping="yes"></xsl:value-of>
                                <xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </h1>
                        </div>
                        <div class="hino-news-detail__timeline">
                            <div class="hino-news-detail__timeline__time">
                                <span class="lnr lnr-calendar-full"></span>
                                <div class="date">
                                    <xsl:value-of select="/NewsDetail/CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                                </div>
                            </div>
                            <div class="hino-news-detail__timeline__icon-social">
                                <ul>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                                <xsl:value-of select="/NewsDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
                                            </xsl:attribute>
                                            <i class="fa fa-facebook"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <xsl:attribute name="href">
                                                <xsl:text>https://www.linkedin.com/shareArticle?mini=</xsl:text>
                                                <xsl:value-of select="/NewsDetail/FullUrl" disable-output-escaping="yes"></xsl:value-of>
                                            </xsl:attribute>
                                            <i class="fa fa-linkedin"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="hino-news-detail__content">
                            <xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                    <div class="col-xl-3">
                        <div class="hino-news-detail__other">
                            <div class="block-title">
                                <h1>Tin tức khác</h1>
                            </div>
                            <ul class="hino-news-detail__other__list">
                                <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther">
        <xsl:if test="position()&lt;6">
            <xsl:if test="position()&lt;6">
                <li class="hino-news-detail__other__list__item">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <div class="hino-news-detail__other__list__item__img">
                            <img >
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                        <div class="hino-news-detail__other__list__item__desc">
                            <div class="date">
                                <span class="lnr lnr-calendar-full"></span>
                                <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                            </div>
                            <p>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </p>
                        </div>
                    </a>
                </li>
            </xsl:if>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>