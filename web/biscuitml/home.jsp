<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="UTF-8"?>
<page xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" output-encoding="UTF-8" title="Top 100 Movies for Feature Phones" xsi:nonamespaceschemalocation="http://www.netbiscuits.com/schema/netbiscuits.xsd">
    <external file="includes/styles.css" type="css"/>
    <container>
        <column>
            <event type="onload">
                <choose>
                    <when test="orientationlandscape">
                        <action name="goToLink">
                            <param name="link" value="home_ls.do"/>
                        </action>
                    </when>
                </choose>
            </event>
            <event type="onorientationchange">
                <action name="goToLink">
                    <param name="link" value="home_ls.do"/>
                </action>
            </event>
            <SEPARATOR/>
            <IMAGE>
            <img src="/images/inset7top.png"/>
            </IMAGE>
            <jsp:include page="/includes/movieGallery.inc.jsp"/>
            <SEPARATOR/>
            <IMAGE>
            <styles>
                <style name="text-align" value="center"/>
            </styles>
            <img src="/images/netflixbanner.PNG" convert="true"/>
            </IMAGE>
            <SEPARATOR/>
            <TEXT>
            <headline>Top Rated Movies of all Time</headline>
            </TEXT>
            <c:forEach var="movie" items="${movies}">
                <jsp:include page="/includes/movielistitem.inc.jsp?name=${movie.name}&id=${movie.id}"/>
            </c:forEach>
        </column>
    </container>
</page>
