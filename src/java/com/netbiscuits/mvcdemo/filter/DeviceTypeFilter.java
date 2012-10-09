package com.netbiscuits.mvcdemo.filter;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;

public class DeviceTypeFilter implements Filter {
    
    //Note: This apply these filters the following headers have to be enabled within your Netbiscuits Application
    private final static String NETBISCUITS_DIS_IS_DESKTOP = "X-DeviceParam-DeviceIsDesktopBrowser";
    private final static String NETBISCUITS_DIS_CAN_TACTILE = "X-DeviceParam-TactileCanTactile";
    public FilterConfig filterConfig;
    
    public void doFilter(final ServletRequest request, final ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest hsr = (HttpServletRequest)request;

        if (isHeaderSetToTrue(hsr.getHeader(NETBISCUITS_DIS_IS_DESKTOP))) {
            request.setAttribute("presentationType", "desktop");
        } else if (isHeaderSetToTrue(hsr.getHeader(NETBISCUITS_DIS_CAN_TACTILE))) {
            request.setAttribute("presentationType", "touch");
        } else {
            request.setAttribute("presentationType", "feature");
        } 
               
        chain.doFilter(request, response);     
    }
    
    public void init(final FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
    }
    
    public void destroy() {
    }   
    
    private boolean isHeaderSetToTrue(String headerValue) {
        return (headerValue == null ? false : headerValue.equalsIgnoreCase("true"));
    }
}
