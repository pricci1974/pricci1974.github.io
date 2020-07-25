<%-- 
    Document   : CookieDemo
    Created on : Jul 19, 2020, 12:42:36 PM
    Author     : pdr04
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>CookieDemo</title>
    </head>
    <body>
        <h1>Cookie Demo</h1>
        <% Cookie cookie = new Cookie("color", "red");
        Cookie cookie1 = new Cookie("radius", "2.5");
        Cookie cookie2 = new Cookie("count", "2");
        response.addCookie(cookie); 
        response.addCookie(cookie1);
        response.addCookie(cookie2);
        %>
        <jsp:forward page="ShowCookie.jsp" />
    </body>
</html>
