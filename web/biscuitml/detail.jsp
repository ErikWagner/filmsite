<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="UTF-8"?>
<page xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" output-encoding="UTF-8" title="Top 100 Movies for Feature Phones" xsi:nonamespaceschemalocation="http://www.netbiscuits.com/schema/netbiscuits.xsd">
    <container>
        <column>
            <event type="onload">
                <choose>
                    <when test="orientationlandscape">
                        <action name="goToLink">
                            <param name="link" value="details_ls.do?id=${movie.id}"/>
                        </action>
                    </when>
                </choose>
            </event>
            <event type="onorientationchange">
                <action name="goToLink">
                    <param name="link" value="details_ls.do?id=${movie.id}"/>
                </action>
            </event>
            <SEPARATOR/>
            <IMAGE>
            <img src="/images/inset7top.png"/>
            </IMAGE>
            <IMAGE>
            <styles>
                <style name="text-align" value="center"/>
            </styles>
            <img src="/images/netflixbanner.PNG"/>
            </IMAGE>
            <SEPARATOR/>
            <GALLERY id="nb-qbizvui">
                <styles>
                    <style name="text-align" value="center"/>
                    <style name="biscuit-padding" value="6"/>
                    <style name="bgcolor" value="#d3d3d3"/>
                    <style name="borders" value="all"/>
                    <style name="border-color" value="#333333"/>
                    <style name="border-width" value="1"/>
                    <style name="border-style" value="inset"/>
                    <style name="vertical-align" value="top"/>
                </styles>
                <headline/>
                <items>
                    <c:forEach var="image" items="${posters}">
                        <item>
                        <img src="${image.url}" width="100%" height="100%" boxing="1" fillcolor="#fffffe"/>
                        </item>
                    </c:forEach> 
                </items>
                <view position="top"/>
                <settings>
                    <slider>
                        <arrows/>
                        <slideshow/>
                        <indicator/>
                    </slider>
                </settings>
            </GALLERY>
            <SEPARATOR/>
            <TEXT id="mvTitle${movie.id}" class="mvTitle"><richtext>[b]TITLE:[/b] ${movie.name}</richtext></TEXT>
            <TEXT id="mvTagline${movie.id}" class="mvTagline"><richtext>[i]${movie.tagline}[/i]</richtext></TEXT>
            <TEXT id="mvRuntime${movie.id}" class="mvTagline"><richtext>[b]Runtime:[/b] ${movie.runtime}</richtext></TEXT>
            <TEXT id="mvReleased${movie.id}" class="mvTitle"><richtext>[b]Release Date:[/b] ${movie.released}</richtext></TEXT>
            <TEXT id="mvRating${movie.id}" class="mvTagline"><richtext>[b]Rating:[/b] ${movie.rating}</richtext></TEXT>
            <TEXT id="mvOverview${movie.id}" class="mvTagline"><richtext>[i]${movie.overview}[/i]</richtext></TEXT>
            <SEPARATOR/>
            <TEXT>
            <styles>
                <style name="color" value="#ffffff"/>
                <style name="font-family" value="sans-serif"/>
                <style name="link-color" value="#000000"/>
                <style name="bgimage" value="/images/gradient.png"/>
                <style name="bgrepeat" value="repeat-x"/>
            </styles>
            <headline/>
            <richtext>
                [url="home.do"]&lt; Home[/url]
                [br][br]</richtext>
            </TEXT>
            <IMAGE>
            <img src="/images/inset7bottom.png"/>
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
