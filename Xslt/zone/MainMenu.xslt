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
            <xsl:if test="ZoneId=171">
                <xsl:attribute name="class">
                    <xsl:text>nav-item drop-mega</xsl:text>
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
                    <xsl:when test="ZoneId!=171 and ZoneId!=173">
                        <ul class="dropdown-menu">
                            <xsl:apply-templates select="Zone" mode="Dropdown"></xsl:apply-templates>
                        </ul>
                    </xsl:when>
                    <xsl:when test="ZoneId=173">
                        <ul class="dropdown-menu">
                            <xsl:apply-templates select="Zone" mode="DropdownIcon"></xsl:apply-templates>
                        </ul>
                    </xsl:when>
                    <xsl:otherwise>
                        <div class="drop-mega-menu">
                            <div class="row">
                                <div class="col-xl-2">
                                    <div class="mega-left">
                                        <ul class="tab-mega">
                                            <xsl:apply-templates select="Zone" mode="Sup1"></xsl:apply-templates>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-xl-10">
                                    <xsl:apply-templates select="Zone" mode="Sup2"></xsl:apply-templates>
                                </div>
                            </div>
                        </div>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>
        </li>
    </xsl:template>
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
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="DropdownIcon">
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
    <xsl:template match="Zone" mode="Sup1">
        <li>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="rel">
                <xsl:text>mega-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
            <em class="lnr lnr-chevron-right"></em>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode="Sup2">
        <div class="mega-right panel">
            <xsl:attribute name="id">
                <xsl:text>mega-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="class">
                <xsl:text>mega-right panel active</xsl:text>
            </xsl:attribute>
            <div class="row">
                <xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Zone" mode="Child">
        <div class="col-xl-3">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <h2>
                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                </h2>
            </a>
            <ul>
                <xsl:apply-templates select="Zone" mode="Child2"></xsl:apply-templates>
            </ul>
        </div>
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
