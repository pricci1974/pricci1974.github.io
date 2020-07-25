<%-- 
    Document   : FactorialBean
    Created on : Jul 13, 2020, 8:16:35 AM
    Author     : pdr04
--%>

<%@page import = "com.mycompany.chapter38.FactorialBean"%>
<jsp:useBean id= "factorialBeanId"
             class= "com.mycompany.chapter38.FactorialBean" scope= "page" >

</jsp:useBean>
<jsp:setProperty name= "factorialBeanId" property= "*" />
<html>
    <head>
        <title>Factorial Bean</title>
    </head>
    <body>
        <h3>Compute Factorial Using a Bean</h3>
        <form method= "post">
            Enter new Value: <input name= "number" /><br /><br />
            <input type= "submit" name= "Submit"
                   value = "Compute Factorial" />
            <input type= "reset" value= "Reset" /><br /><br />
            Factorial of
            <jsp:getProperty name= "factorialBeanId"
                             property= "number" /> is
            <%@page import= "java.text.*" %>
            <% NumberFormat format = NumberFormat.getNumberInstance();%>
            <%= format.format(factorialBeanId.getFactorial())%>
        </form>
    </body>
</html>
