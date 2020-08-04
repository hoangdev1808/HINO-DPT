<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <ul class="nav-list">
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
        </ul>
    </xsl:template>
    <xsl:template match="Zone">
        <li class="nav-item">
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>nav-item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a class="nav-link">
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
                <xsl:if test="count(Zone)>0">
                    <span class="submenu-toggle mobile">
                        <i class="fa fa-angle-down"></i>
                    </span>
                </xsl:if>
            </a>
            <xsl:if test="count(Zone)>0">
                <xsl:choose>
                    <xsl:when test="ZoneId!=210">
                        <ul class="dropdown-menu">
                            <xsl:apply-templates select="Zone" mode="Dropdown"></xsl:apply-templates>
                        </ul>
                    </xsl:when>
                </xsl:choose>
            </xsl:if>
        </li>
    </xsl:template>
    <!-- Danh sách Dropdown -->
    <xsl:template match="Zone" mode="Dropdown">
        <li class="dropdown-item">
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>dropdown-item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
            </a>
            <em class="lnr lnr-chevron-right"></em>
        </li>
    </xsl:template>
    <!-- Danh sách Dropdown mega menu -->
</xsl:stylesheet>