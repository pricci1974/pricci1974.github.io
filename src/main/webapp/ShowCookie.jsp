<%-- 
    Document   : ShowCookie
    Created on : Jul 21, 2020, 6:57:15 AM
    Author     : pdr04
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Show Cookies</h1>
        <%  String color = "";
            String radius = "";
            String count = "";
            Cookie[] cookies = request.getCookies();
            for (int i = 0; i < cookies.length; i++){
            if (cookies[i].getName().equals("color"))
            color = cookies[i].getValue();
            else if (cookies[i].getName().equals("radius"))
            radius = cookies[i].getValue();
            else if (cookies[i].getName().equals("count"))
            count = cookies[i].getValue();
            }
            out.println(color + "<br />" + radius + "<br />" + count);
        %>
    </body>
</html>
