<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<!-- Chọn đúc nam ninh -->
		<div class="block-title">
			<h1><xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</h1>
		</div>
		<div class="row">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:apply-templates select="News"></xsl:apply-templates>
		
	</xsl:template>
	<xsl:template match="News">
		<div class="col-xl-2 col-md-4 col-sm-6">
			<div class="dnn-home5__content__item">
				<div class="dnn-home5__content__item__img">
				<img >
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
				</div>
				<div class="dnn-home5__content__item__desc">
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>