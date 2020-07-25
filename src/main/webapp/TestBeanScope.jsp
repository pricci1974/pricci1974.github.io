<%-- 
    Document   : TestBeanScope
    Created on : Jul 13, 2020, 7:41:32 AM
    Author     : pdr04
--%>

<%@page import = "com.mycompany.chapter38.Count" %>
<jsp:useBean id= "count" scope = "application"
             class= "com.mycompany.chapter38.Count">
</jsp:useBean>    
<html>
    <head>
        <title>Test Bean Scope</title>
    </head>
    <body>
        <h3>Testing Bean Scope in JSP (Application)</h3>
        <% count.increaseCount(); %>
        You are visitor number <%= count.getCount() %><br />
        From host: <%= request.getRemoteHost() %>
        and session: <%= session.getId() %>
    </body>
</html>
