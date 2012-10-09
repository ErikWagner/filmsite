<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/xml" pageEncoding="UTF-8"%>
<?xml version="1.0" encoding="UTF-8"?>
<page title="US Top Rated Movies of all time" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
      xsi:noNamespaceSchemaLocation="http://www.netbiscuits.com/schema/netbiscuits-tactile.xsd">
    <external type="script" file="includes/script.js"/>
    <external type="#css" file="/includes/styles.css"/>

    <!--    Defines visible and usable area-->
    <layout id="root" top="0" left="0" height="parent.height" width="parent.width"> 
  
        <!--bottom Movie Detail area in both portrait and landscape mode-->
        <layout id="bigger" class="section" 
                top="portrait: parent.height*0.1, landscape: parent.height*0.25" 
                left="portrait: parent.width*0.33, landscape: parent.width*0.26" 
                height="portrait: parent.height*0.9, landscape: parent.height*0.8" 
                width="portrait: (parent.width*0.67), landscape: parent.width*0.74">

            <multiview id="mvMovieDetails" class="multiview" 
                       top="0" 
                       left="0" 
                       height="parent.height" 
                       width="parent.width" 
                       overflow="hidden" >
                <view id="myMovieDetails_v_${movie.id}" 
                      effect-type="fade" effect-transition="easeOut" 
                      top="0" left="0" 
                      height="parent.height" 
                      width="parent.width">
                    <multiview 
                        id="myMovieDetails_mv_v_Images_mv${movie.id}" 
                        class="mvDetailImages" 
                        top="0" 
                        left="portrait: 0, landscape: 0" 
                        height="portrait: parent.height*0.4, landscape: parent.height" 
                        width="portrait: parent.width, landscape: parent.width*0.3" 
                        overflow="hidden"
                        float="left"
                        swipe="horizontal">
                        <c:forEach var="image" items="${posters}">
                            <view id="myMovieDetails_mv_v_Images_mv_v${image.id}" 
                                  top="0" left="0" 
                                  effect-type="fade" effect-transition="linear" 
                                  height="parent.height" 
                                  width="parent.width">
                                <IMAGE id="${movie.id}${image.id}" class="moviePoster"><img src="/images/pixel.gif" altsrc="${image.url}" format="jpg" width="100%" height="100%" boxing="3" fillcolor="#fffffe"/></IMAGE>
                            </view> 
                        </c:forEach> 
                    </multiview>
                    <view 
                        id="myMovieDetails_mv_v_Text_v${movie.id}" 
                        height="portrait: parent.height*0.6, landscape: parent.height" 
                        width="portrait: parent.width, landscape: parent.width*0.6" 
                        left="portrait: 0, landscape: parent.width*0.3" 
                        top="portrait: , landscape: 0"
                        overflow="hidden">
                        <flexview id="flexMovieStats${movie.id}" class="flexMovieStats" 
                                  width="parent.width" 
                                  left="0" top="0" 
                                  flexflow="vertical" 
                                  flexdimension="height" flexitems-width="parent.width" 
                                  flexitems-minheight="10" flexitems-minwidth="10" 
                                  scroll="vertical" 
                                  effect-type="fade">

                            <item>
                                <jsp:include page="/movieStatsInc.do?id=${movie.id}"/>
                            </item>
                        </flexview>
                    </view>
                </view>
            </multiview>
        </layout>

    </layout>
</page>