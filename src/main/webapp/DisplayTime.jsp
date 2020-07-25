<%-- 
    Document   : DisplayTime
    Created on : Jul 13, 2020, 8:58:03 AM
    Author     : pdr04
--%>

<%@page pageEncoding= "GB18030"%>
<%@page import = "com.mycompany.chapter38.TimeBean" %>
<jsp:useBean id= "timeBeanId"
             class= "com.mycompany.chapter38.TimeBean" scope = "application" >
</jsp:useBean> 
<jsp:setProperty name= "timeBeanId" property= "*" />

<html>
    <head>
        <title>Display Time</title>
    </head>
    <body>
        <h3>Choose locale and time zone</h3>
        Current time is
        <%= timeBeanId.currentTimeString(timeBeanId.getLocaleIndex(),
                timeBeanId.getTimeZoneIndex())%>
    </body>
</html>
