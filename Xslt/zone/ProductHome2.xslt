<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="row">
            <xsl:apply-templates select="/ZoneList/Zone/Zone/Zone"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <div class="col-xl-6 d-flex align-items-center">
            <div class="hinohome5__content">
                <div class="block-title">
                    <p>
                        <xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of>
                    </p>
                    <h1>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </h1>
                </div>
                <div class="hinohome5__content__desc">
                    <p>
                        <xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
                    </p>
                </div>
				<a class="btn btn__new">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:text>khám phá ngay</xsl:text>
				</a>
            </div>
        </div>
        <div class="col-xl-6">
            <div class="hinohome5__img">
                <img >
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
</xsl:stylesheet>