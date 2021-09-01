package com.example.interceptor;

import com.example.entity.User;
import org.apache.commons.lang.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        String contextPath = session.getServletContext().getContextPath();
        String[] requireAuthPages = new String[]{
                "index",
        } ;
        String uri = request.getRequestURI();
        uri = StringUtils.remove(uri,contextPath+"/");
        String page = uri;

        if(beginWith(page,requireAuthPages)){
            User user = (User) session.getAttribute("user");
            if(user == null){
                response.sendRedirect("login");
                return false;
            }
        }
        return true;
    }

    private boolean beginWith(String page, String[] requireAuthPages) {
        boolean result = false;
        for(String requireAuthPage :requireAuthPages){
            if(StringUtils.startsWith(page,requireAuthPage)){
                result = true;
                break;
            }
        }
        return result;
    }


}
