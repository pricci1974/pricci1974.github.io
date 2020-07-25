<%-- 
    Document   : ComputeFactorial
    Created on : Jul 12, 2020, 9:30:41 AM
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
        <% for (int i = 0; i <= 10; i++){ %>
        Factorial of <%= i %> is <%-- no ; after expressions! --%>
                <%= computeFactorial(i) %> <br />
        <% } %>
        
        <%! private long computeFactorial(int n){
        if (n == 0)
        return 1;
        else
        return n * computeFactorial(n - 1);
        }
        %>
    </body>
</html>
