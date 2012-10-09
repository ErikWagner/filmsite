<%-- 
    Document   : newslistitem.inc.jsp
    Created on : Sep 14, 2012, 2:57:59 PM
    Author     : ewagner
--%>

<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<TEXT id="mvTitle${movie.id}" class="mvTitle"><richtext>[b]TITLE:[/b] ${movie.name}</richtext></TEXT>
<TEXT id="mvTagline${movie.id}" class="mvTagline"><richtext>[i]${movie.tagline}[/i]</richtext></TEXT>
<TEXT id="mvRuntime${movie.id}" class="mvTagline"><richtext>[b]Runtime:[/b] ${movie.runtime}</richtext></TEXT>
<TEXT id="mvReleased${movie.id}" class="mvTitle"><richtext>[b]Release Date:[/b] ${movie.released}</richtext></TEXT>
<TEXT id="mvRating${movie.id}" class="mvTagline"><richtext>[b]Rating:[/b] ${movie.rating}</richtext></TEXT>
<TEXT id="mvOverview${movie.id}" class="mvTagline"><richtext>[i]${movie.overview}[/i]</richtext></TEXT>
