<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="language dropdown">
            <button class="dropdown-toggle" id="dropdownMenuButton" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <xsl:apply-templates select="/LanguageList/Language" mode="Active"></xsl:apply-templates>
            </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <xsl:apply-templates select="/LanguageList/Language"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Language" mode="Active">
        <xsl:if test="IsActive='true'">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
                <span>
                    <xsl:text>VN</xsl:text>
                </span>
            </a>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Language">
        <xsl:if test="position()=1">
            <a class="dropdown-item">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
                <span>
                    <xsl:text>VN</xsl:text>
                </span>
            </a>
        </xsl:if>
        <xsl:if test="position()=2">
            <a class="dropdown-item">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
                <span>
                    <xsl:text>EN</xsl:text>
                </span>
            </a>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>