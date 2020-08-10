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
		<div class="hino-pro2__left">
			<div class="hino-pro2__left__title">
				<h2>
					<em class="material-icons">keyboard_arrow_down</em>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</h2>
			</div>
			<ul>
				<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
			</ul>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Child">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
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
</xsl:stylesheet>