<%-- 
    Document   : newslistitem.inc.jsp
    Created on : Sep 14, 2012, 2:57:59 PM
    Author     : ewagner
--%>

<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<GALLERY id="nb-mojfvii">
    <settings>
        <slider snap="true">
            <arrows left="images/arrowleft.png" right="images/arrowright.png"/>
            <indicator empty="images/ind_empty.gif" full="images/ind.gif" maxVisible="1"/>
        </slider>
    </settings>
    <styles>
        <style name="text-align" value="center"/>
    </styles>
    <controls>
        <control name="showarrows" value="0"/>
        <control name="arrow-position" value="middle"/>
    </controls>
    <items>
        <item>
            <img src="/images/starwars6.jpg" width="100%" height="100%" boxing="1" fillcolor="#fffffe"/>
        </item>
        <item>
            <img src="/images/diehard.jpg" width="100%" height="100%" boxing="1" fillcolor="#fffffe"/>
        </item>
        <item>
            <img src="/images/lotr.jpg" width="100%" height="100%" boxing="1" fillcolor="#fffffe"/>
        </item>
        <item>
            <img src="/images/forrest_gump.jpg" width="100%" height="100%" boxing="1" fillcolor="#fffffe"/>
        </item>
    </items>
</GALLERY>
