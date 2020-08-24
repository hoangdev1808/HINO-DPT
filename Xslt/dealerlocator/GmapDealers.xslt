<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="hidden">
            <input type="hidden" id="hdnDealerLocatorSiteId">
                <xsl:attribute name="value">
                    <xsl:value-of select="/DealerList/SiteId"></xsl:value-of>
                </xsl:attribute>
            </input>
            <input type="hidden" id="hdnDealerLocatorLanguageId">
                <xsl:attribute name="value">
                    <xsl:value-of select="/DealerList/LanguageId"></xsl:value-of>
                </xsl:attribute>
            </input>
            <input type="hidden" id="hdnDealerLocatorZoneGuid" value="">
                <xsl:attribute name="value">
                    <xsl:value-of select="/DealerList/ZoneGuid"></xsl:value-of>
                </xsl:attribute>
            </input>
            <input type="hidden" id="hdfDealerLocatorSelectCountry">
                <xsl:attribute name="value">
                    <xsl:value-of select="/DealerList/SelectCountryText"></xsl:value-of>
                </xsl:attribute>
            </input>
            <input type="hidden" id="hdfDealerLocatorSelectProvince">
                <xsl:attribute name="value">
                    <xsl:value-of select="/DealerList/SelectProvinceText"></xsl:value-of>
                </xsl:attribute>
            </input>
            <input type="hidden" id="hdfDealerLocatorSelectDistrict">
                <xsl:attribute name="value">
                    <xsl:value-of select="/DealerList/SelectDistrictText"></xsl:value-of>
                </xsl:attribute>
            </input>
            <input type="hidden" id="hdfDealerLocatorSelectZone">
                <xsl:attribute name="value">
                    <xsl:value-of select="/DealerList/SelectZoneText"></xsl:value-of>
                </xsl:attribute>
            </input>
            <input type="hidden" id="hdfDealerLocatorCulture">
                <xsl:attribute name="value">
                    <xsl:value-of select="/DealerList/Culture"></xsl:value-of>
                </xsl:attribute>
            </input>
        </div>
        <section class="section hino-servicecenter">
            <div class="hino-servicecenter__form">
                <div class="container">
                    <div class="form-map">
                        <div class="field form_desc" style="display:none;">
                            <!--<label for="ddlCountry"><xsl:value-of select="/DealerList/CountryText"></xsl:value-of></label>-->
                            <select class="form-control form-select" id="ddlCountry"></select>
                        </div>
                        <div class="field form_desc">
                            <!--<label for="ddlProvince"><xsl:value-of select="/DealerList/ProvinceText"></xsl:value-of></label>-->
                            <select class="form-select form-control" id="ddlProvince">
                                <option value="">
                                    <xsl:value-of select="/DealerList/SelectProvinceText"></xsl:value-of>
                                </option>
                            </select>
                        </div>
                        <div class="field form_desc">
                            <!--<label for="ddlDistrict"><xsl:value-of select="/DealerList/DistrictText"></xsl:value-of></label>-->
                            <select class="form-control form-select" id="ddlDistrict">
                                <option value="">
                                    <xsl:value-of select="/DealerList/SelectDistrictText"></xsl:value-of>
                                </option>
                            </select>
                        </div>
                        <button type="submit" id="edit-submit" class="btn-searchmap btn__new2 btn">
                            <xsl:attribute name="value">
                                <xsl:value-of select="/DealerList/SearchText"></xsl:value-of>
                            </xsl:attribute>
                            <em class="material-icons"><xsl:text>search</xsl:text></em>
                            <xsl:text>Tìm kiếm</xsl:text>
                        </button>
                    </div>
                    <div class="hidden">
                        <div class="searh-text">
                            <label>
                                <xsl:value-of select="/DealerList/OrText"></xsl:value-of>
                            </label>
                            <input type="text" maxlength="128" name="address" id="address" size="60" value="" class="form-text" autocomplete="off">
                                <xsl:attribute name="placeholder">
                                    <xsl:value-of select="/DealerList/EnterLocationText"></xsl:value-of>
                                </xsl:attribute>
                            </input>
                            <input type="submit" id="edit-submit" class="btn btn-large btn-primary">
                                <xsl:attribute name="value">
                                    <xsl:value-of select="/DealerList/SearchText"></xsl:value-of>
                                </xsl:attribute>
                            </input>
                        </div>
                    </div>
                </div>
            </div>
            <div class="hino-servicecenter__map">
                <div class="map-wrapper">
                    <iframe id="mapiframe"></iframe>
                </div>
                <div class="hino-helper2__left" id="list"></div>
            </div>
            <div id="results" class="hidden">
                <div id="ajax_msg" class="locate mrb15 hidden"></div>
            </div>
        </section>
        <div id="map" class="hidden">
            <input type="hidden" id="distance" name="distance" value="1" />
            <div id="map_canvas" class="map_system"></div>
        </div>
    </xsl:template>
</xsl:stylesheet>