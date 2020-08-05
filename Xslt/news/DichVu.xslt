<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="Zone">
        <xsl:if test="position()=1">
            <section class="hino-service1 section">
                <div class="container">
                    <div class="block-title border__bottom">
                        <h1>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h1>
                    </div>
                    <xsl:apply-templates select="News" mode="Section1"></xsl:apply-templates>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=2">
            <section class="section hino-service2">
                <div class="container">
                    <div class="block-title border__bottom">
                        <h1>
                            <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                        </h1>
                    </div>
                    <div class="row">
                        <xsl:apply-templates select="News" mode="Section2"></xsl:apply-templates>
                    </div>
                </div>
            </section>
        </xsl:if>
        <xsl:if test="position()=3">
            <section class="section hino-service3">
                <div class="container">
                    <div class="block-title border__bottom">
                        <h1>hỏi đáp</h1>
                    </div>
                    <div class="hino-service3__content acc">
                        <div class="hino-service3__content__card acc__card">
                            <div class="hino-service3__content__card__title acc__title">
                                <p>01. Hino có bao nhiêu trạm dịch vụ?</p>
                                <em class="lnr lnr-chevron-down"></em>
                            </div>
                            <div class="hino-service3__content__card__body acc__panel">
                                <ul>
                                    <li>
                                        <p>Hiện tại Hino có  4 trạm dịch vụ 3S cùng trung tâm hỗ trợ khách hàng 24/24 tại Hồ Chí Minh.</p>
                                    </li>
                                    <li>
                                        <p>Cần tư vấn thêm? Gọi hotline của Hino Đại Phát Tín: 0919742882 </p>
                                    </li>
                                    <li>
                                        <p>Theo dõi trang Facebook của Hino Đại Phát Tín: https://www.facebook.com/otodaiphattin/</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="hino-service3__content__card acc__card">
                            <div class="hino-service3__content__card__title acc__title">
                                <p>01. Hino có bao nhiêu trạm dịch vụ?</p>
                                <em class="lnr lnr-chevron-down"></em>
                            </div>
                            <div class="hino-service3__content__card__body acc__panel">
                                <ul>
                                    <li>
                                        <p>Hiện tại Hino có  4 trạm dịch vụ 3S cùng trung tâm hỗ trợ khách hàng 24/24 tại Hồ Chí Minh.</p>
                                    </li>
                                    <li>
                                        <p>Cần tư vấn thêm? Gọi hotline của Hino Đại Phát Tín: 0919742882 </p>
                                    </li>
                                    <li>
                                        <p>Theo dõi trang Facebook của Hino Đại Phát Tín: https://www.facebook.com/otodaiphattin/</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="hino-service3__content__card acc__card">
                            <div class="hino-service3__content__card__title acc__title">
                                <p>01. Hino có bao nhiêu trạm dịch vụ?</p>
                                <em class="lnr lnr-chevron-down"></em>
                            </div>
                            <div class="hino-service3__content__card__body acc__panel">
                                <ul>
                                    <li>
                                        <p>Hiện tại Hino có  4 trạm dịch vụ 3S cùng trung tâm hỗ trợ khách hàng 24/24 tại Hồ Chí Minh.</p>
                                    </li>
                                    <li>
                                        <p>Cần tư vấn thêm? Gọi hotline của Hino Đại Phát Tín: 0919742882 </p>
                                    </li>
                                    <li>
                                        <p>Theo dõi trang Facebook của Hino Đại Phát Tín: https://www.facebook.com/otodaiphattin/</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="hino-service3__content__card acc__card">
                            <div class="hino-service3__content__card__title acc__title">
                                <p>01. Hino có bao nhiêu trạm dịch vụ?</p>
                                <em class="lnr lnr-chevron-down"></em>
                            </div>
                            <div class="hino-service3__content__card__body acc__panel">
                                <ul>
                                    <li>
                                        <p>Hiện tại Hino có  4 trạm dịch vụ 3S cùng trung tâm hỗ trợ khách hàng 24/24 tại Hồ Chí Minh.</p>
                                    </li>
                                    <li>
                                        <p>Cần tư vấn thêm? Gọi hotline của Hino Đại Phát Tín: 0919742882 </p>
                                    </li>
                                    <li>
                                        <p>Theo dõi trang Facebook của Hino Đại Phát Tín: https://www.facebook.com/otodaiphattin/</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="hino-service3__content__card acc__card">
                            <div class="hino-service3__content__card__title acc__title">
                                <p>01. Hino có bao nhiêu trạm dịch vụ?</p>
                                <em class="lnr lnr-chevron-down"></em>
                            </div>
                            <div class="hino-service3__content__card__body acc__panel">
                                <ul>
                                    <li>
                                        <p>Hiện tại Hino có  4 trạm dịch vụ 3S cùng trung tâm hỗ trợ khách hàng 24/24 tại Hồ Chí Minh.</p>
                                    </li>
                                    <li>
                                        <p>Cần tư vấn thêm? Gọi hotline của Hino Đại Phát Tín: 0919742882 </p>
                                    </li>
                                    <li>
                                        <p>Theo dõi trang Facebook của Hino Đại Phát Tín: https://www.facebook.com/otodaiphattin/</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="hino-service3__content__card acc__card">
                            <div class="hino-service3__content__card__title acc__title">
                                <p>01. Hino có bao nhiêu trạm dịch vụ?</p>
                                <em class="lnr lnr-chevron-down"></em>
                            </div>
                            <div class="hino-service3__content__card__body acc__panel">
                                <ul>
                                    <li>
                                        <p>Hiện tại Hino có  4 trạm dịch vụ 3S cùng trung tâm hỗ trợ khách hàng 24/24 tại Hồ Chí Minh.</p>
                                    </li>
                                    <li>
                                        <p>Cần tư vấn thêm? Gọi hotline của Hino Đại Phát Tín: 0919742882 </p>
                                    </li>
                                    <li>
                                        <p>Theo dõi trang Facebook của Hino Đại Phát Tín: https://www.facebook.com/otodaiphattin/</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="hino-service3__content__card acc__card">
                            <div class="hino-service3__content__card__title acc__title">
                                <p>01. Hino có bao nhiêu trạm dịch vụ?</p>
                                <em class="lnr lnr-chevron-down"></em>
                            </div>
                            <div class="hino-service3__content__card__body acc__panel">
                                <ul>
                                    <li>
                                        <p>Hiện tại Hino có  4 trạm dịch vụ 3S cùng trung tâm hỗ trợ khách hàng 24/24 tại Hồ Chí Minh.</p>
                                    </li>
                                    <li>
                                        <p>Cần tư vấn thêm? Gọi hotline của Hino Đại Phát Tín: 0919742882 </p>
                                    </li>
                                    <li>
                                        <p>Theo dõi trang Facebook của Hino Đại Phát Tín: https://www.facebook.com/otodaiphattin/</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="hino-service3__content__card acc__card">
                            <div class="hino-service3__content__card__title acc__title">
                                <p>01. Hino có bao nhiêu trạm dịch vụ?</p>
                                <em class="lnr lnr-chevron-down"></em>
                            </div>
                            <div class="hino-service3__content__card__body acc__panel">
                                <ul>
                                    <li>
                                        <p>Hiện tại Hino có  4 trạm dịch vụ 3S cùng trung tâm hỗ trợ khách hàng 24/24 tại Hồ Chí Minh.</p>
                                    </li>
                                    <li>
                                        <p>Cần tư vấn thêm? Gọi hotline của Hino Đại Phát Tín: 0919742882 </p>
                                    </li>
                                    <li>
                                        <p>Theo dõi trang Facebook của Hino Đại Phát Tín: https://www.facebook.com/otodaiphattin/</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="hino-service3__content__card acc__card">
                            <div class="hino-service3__content__card__title acc__title">
                                <p>01. Hino có bao nhiêu trạm dịch vụ?</p>
                                <em class="lnr lnr-chevron-down"></em>
                            </div>
                            <div class="hino-service3__content__card__body acc__panel">
                                <ul>
                                    <li>
                                        <p>Hiện tại Hino có  4 trạm dịch vụ 3S cùng trung tâm hỗ trợ khách hàng 24/24 tại Hồ Chí Minh.</p>
                                    </li>
                                    <li>
                                        <p>Cần tư vấn thêm? Gọi hotline của Hino Đại Phát Tín: 0919742882 </p>
                                    </li>
                                    <li>
                                        <p>Theo dõi trang Facebook của Hino Đại Phát Tín: https://www.facebook.com/otodaiphattin/</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="hino-service3__content__card acc__card">
                            <div class="hino-service3__content__card__title acc__title">
                                <p>01. Hino có bao nhiêu trạm dịch vụ?</p>
                                <em class="lnr lnr-chevron-down"></em>
                            </div>
                            <div class="hino-service3__content__card__body acc__panel">
                                <ul>
                                    <li>
                                        <p>Hiện tại Hino có  4 trạm dịch vụ 3S cùng trung tâm hỗ trợ khách hàng 24/24 tại Hồ Chí Minh.</p>
                                    </li>
                                    <li>
                                        <p>Cần tư vấn thêm? Gọi hotline của Hino Đại Phát Tín: 0919742882 </p>
                                    </li>
                                    <li>
                                        <p>Theo dõi trang Facebook của Hino Đại Phát Tín: https://www.facebook.com/otodaiphattin/</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="pages">
                        <div class="modulepager">
                            <ul class="pagination">
                                <li class="active">
                                    <a href="#">1</a>
                                </li>
                                <li>
                                    <a href="#">2</a>
                                </li>
                                <li>
                                    <a href="#">3</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Section1">
        <xsl:if test="position()=1">
            <div class="hino-service1__content">
                <div class="row">
                    <div class="col-xl-6 col-md-6">
                        <div class="hino-service1__content__img">
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
                    <div class="col-xl-6 col-md-6">
                        <div class="content">
                            <div class="hino-service1__content__title">
                                <h2>
                                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                </h2>
                            </div>
                            <div class="hino-service1__content__desc">
                                <p>
                                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                                </p>
                            </div>
                            <a class="btn btn__new2">
                                <xsl:attribute name="data-fancybox"></xsl:attribute>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text>Xem thêm</xsl:text>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()=2">
            <div class="hino-service1__content">
                <div class="row">
                    <div class="col-xl-6 col-md-6">
                        <div class="content">
                            <div class="hino-service1__content__title">
                                <h2>
                                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                </h2>
                            </div>
                            <div class="hino-service1__content__desc">
                                <p>
                                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                                </p>
                            </div>
                            <a class="btn btn__new2">
                                <xsl:attribute name="data-fancybox"></xsl:attribute>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text>Xem thêm</xsl:text>
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-6 col-md-6">
                        <div class="hino-service1__content__img">
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
                </div>
            </div>
        </xsl:if>
        <xsl:if test="position()=3">
            <div class="hino-service1__content">
                <div class="row">
                    <div class="col-xl-6 col-md-6">
                        <div class="hino-service1__content__img">
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
                    <div class="col-xl-6 col-md-6">
                        <div class="content">
                            <div class="hino-service1__content__title">
                                <h2>
                                    <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                </h2>
                            </div>
                            <div class="hino-service1__content__desc">
                                <p>
                                    <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                                </p>
                            </div>
                            <a class="btn btn__new2">
                                <xsl:attribute name="data-fancybox"></xsl:attribute>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:text>Xem thêm</xsl:text>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="News" mode="Section2">
        <xsl:if test="position()=1">
            <div class="col-xl-6 col-md-12 hino-news2__news__left">
                <div class="hino-news2__news__left__img">
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
        </xsl:if>
        <div class="col-xl-6 col-md-12 hino-news2__news__right">
            <div class="row">
                <xsl:if test="position()>1 and position()&lt;6">
                    <div class="col-xl-6 col-md-6">
                        <div class="hino-news2__news__right__item">
                            <div class="hino-news2__news__right__item__img">
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
                    </div>
                </xsl:if>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>