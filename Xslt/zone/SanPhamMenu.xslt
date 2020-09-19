<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="category-nav">
            <p>Danh mục</p>
            <em class="material-icons">keyboard_arrow_down</em>
        </div>
        <div class="nav-menu-about">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="hino-pro2__left__title">
            <h2>
                <em class="material-icons">keyboard_arrow_down</em>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            </h2>
        </div>
        <ul class="acc">
            <xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
        </ul>
    </xsl:template>
    <xsl:template match="Zone" mode="Child">
        <li class="acc__card">
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>acc__card active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <div class="acc__title">
                <xsl:value-of select="Title"></xsl:value-of>
                <span class="material-icons">keyboard_arrow_down</span>
            </div>
            <xsl:if test="count(Zone)>0">
                <ul class="sub-lv2 acc__panel">
                    <xsl:apply-templates select="Zone" mode="Child2"></xsl:apply-templates>
                </ul>
            </xsl:if>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="Child2">
        <li>
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
</xsl:stylesheet>