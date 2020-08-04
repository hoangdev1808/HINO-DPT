<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <!-- Tin Tức -->
        <div class="block-title">
            <h1>
                <xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of>
            </h1>
        </div>
        <div class="row">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
            <div class="dnn-home6__content__btn">
                <a class="btn btn__new">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <span><xsl:text>Xem thêm</xsl:text>
                        <em class="ri-arrow-right-line"></em>
                    </span>
                </a>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position()=1">
            <xsl:apply-templates select="News" mode="Left"></xsl:apply-templates>
        </xsl:if>
        <xsl:if test="position()=1">
            <div class="col-xl-6 col-md-12 dnn-home6__content__right">
                <ul class="dnn-home6__content__right__list">
                    <xsl:apply-templates select="News" mode="Right"></xsl:apply-templates>
                </ul>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Left">
        <xsl:if test="position()=1">
            <div class="col-xl-6 col-md-12 dnn-home6__content__left">
                <div class="dnn-home6__content__left__img">
                    <img >
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </div>
                <div class="dnn-home6__content__left__desc">
                    <div class="dnn-home6__content__left__desc__date">
                        <span class="material-icons">event_note</span>
                        <div class="date">
                            <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                        </div>
                    </div>
                    <div class="dnn-home6__content__left__desc__title">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="Title"></xsl:value-of>
                        </a>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Right">
        <xsl:if test="position()&gt;0 and position()&lt;6">
            <li class="dnn-home6__content__right__list__item">
                <div class="dnn-home6__content__right__list__item__date">
                    <span class="material-icons">event_note</span>
                    <div class="date">
                        <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                    </div>
                </div>
                <div class="dnn-home6__content__right__list__item__title">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="Title"></xsl:value-of>
                    </a>
                </div>
            </li>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>