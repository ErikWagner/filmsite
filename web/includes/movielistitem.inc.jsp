<%-- 
    Document   : newslistitem.inc.jsp
    Created on : Sep 14, 2012, 2:57:59 PM
    Author     : ewagner
--%>

<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<TEXT class="menuitem">
<styles>
    <style name="link-color" value="#000"/>
    <style name="margin-bottom" value="0"/>
    <style name="margin-top" value="0"/>
    <style name="padding" value="0"/>    
</styles>
<richtext>[url="details.do?id=${param.id}"]${param.name}[/url]</richtext>
</TEXT>
