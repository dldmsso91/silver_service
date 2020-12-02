package com.cteam.www.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AdminInterceptor extends HandlerInterceptorAdapter {

@Override
public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
if(request.getParameter("admin").equals("1234")) {

return true;
}
response.sendRedirect(request.getContextPath()+"/about_admin.do");
return false;
}
}