<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="UTF-8"?>
<page xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" output-encoding="UTF-8" title="Top 100 Movies for Feature Phones" xsi:nonamespaceschemalocation="http://www.netbiscuits.com/schema/netbiscuits.xsd">
    <external file="includes/styles.css" type="css"/>
    <container>
        <column>
            <event type="onload">
                <choose>
                    <when test="orientationportrait">
                        <action name="goToLink">
                            <param name="link" value="home.do"/>
                        </action>
                    </when>
                </choose>
            </event>
            <event type="onorientationchange">
                <action name="goToLink">
                    <param name="link" value="home.do"/>
                </action>
            </event>
            <IMAGE>
            <img src="/images/inset7top.png"/>
            </IMAGE>
        </column>
    </container>
    <container>
        <column widthpercent="50%">
            <TEXT>
            <headline>Top Rated Movies of all Time</headline>
            </TEXT>
            <group>
                <c:forEach var="movie" items="${movies}">
                    <jsp:include page="/includes/movielistitem.inc.jsp?name=${movie.name}&id=${movie.id}"/>
                </c:forEach>
            </group>
        </column>
        <column widthpercent="50%">
            <IMAGE>
            <img src="/images/logo.gif" convert="true" width="100%" boxing="4" fillcolor="#fffffe"/>
            </IMAGE>

            <IMAGE>
            <img src="/images/netflixbanner.PNG" convert="true" width="100%" boxing="1" fillcolor="#fffffe"/>
            </IMAGE>
            <SEPARATOR/>
            <jsp:include page="/includes/movieGallery.inc.jsp"/>
            <TEXT>
            <styles>
                <style name="font-family" value="sans-serif"/>
                <style name="biscuit-padding" value="5"/>
            </styles>
            <headline/>
            <richtext>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</richtext>
            </TEXT>
        </column>
    </container>
    <container>
        <column>
            <TEXT>
            <styles>
                <style name="color" value="#ffffff"/>
                <style name="font-family" value="sans-serif"/>
                <style name="link-color" value="#ffffff"/>
                <style name="bgimage" value="pics/gradient.png"/>
                <style name="bgrepeat" value="repeat-x"/>
            </styles>
            <headline/>
            <richtext>
                [url="index.rbml"]&lt; Home[/url]
                [br][br]</richtext>
            </TEXT>
            <IMAGE>
            <img src="pics/inset7bottom.png"/>
            </IMAGE>
            <TEXT>
            <styles>
                <style name="color" value="#333333"/>
                <style name="font-size" value="small"/>
                <style name="font-family" value="sans-serif"/>
                <style name="text-align" value="center"/>
            </styles>
            <headline/>
            <richtext>Copyright © 2012 Company, Inc. </richtext>
            </TEXT>
        </column>
    </container>
</page>
