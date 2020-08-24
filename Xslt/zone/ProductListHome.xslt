<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="row">
            <div class="col-xl-3">
                <div class="hinohome1__product__sidebar">
                    <div class="category">
                        <p>Danh mục</p>
                        <em class="material-icons">keyboard_arrow_down</em>
                    </div>
                    <ul class="tabs">
                        <xsl:apply-templates select="/ZoneList/Zone" mode="List"></xsl:apply-templates>
                    </ul>
                </div>
            </div>
            <div class="col-xl-9">
                <xsl:apply-templates select="/ZoneList/Zone" mode="Product"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="List">
        <li>
            <xsl:if test="IsActive='true'">
                <xsl:text>active</xsl:text>
            </xsl:if>
            <xsl:attribute name="rel">
                <xsl:text>list-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="Product">
        <div class="hinohome1__product__list panel">
			<xsl:attribute name="class">
				<xsl:text>hinohome1__product__list panel active</xsl:text>
			</xsl:attribute>
            <xsl:attribute name="id">
                <xsl:text>list-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <div class="row">
                <xsl:apply-templates select="Product" mode="ListPro"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Product" mode="ListPro">
        <div class="col-xl-4">
            <div class="hinohome1__product__list__item box-shadow">
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <div class="hinohome1__product__list__item__img">
                        <img >
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </div>
                    <div class="hinohome1__product__list__item__name">
                        <p>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </p>
                    </div>
                </a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>