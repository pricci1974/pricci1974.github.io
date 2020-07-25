<%-- 
    Document   : RandomAddQuestions
    Created on : Jul 21, 2020, 7:54:34 AM
    Author     : pdr04
--%>

<%@page import="com.mycompany.chapter38.RandomAddProblem"%>
<jsp:useBean id="rQuestBean" scope="session"
             class="com.mycompany.chapter38.RandomAddProblem">
</jsp:useBean>
<jsp:setProperty name="rQuestBean" property="*"/> 
<html>
    <head>
        <title>JSP Page</title>
    </head>
     <body>
         <form method="post" action="RandomResults.jsp" autocomplete="off">
        <table>
        <% for (int i = 0; i < 10;i++) { %>
        <% String num1AsString = "" + rQuestBean.getNum1();
           String num2AsString = "" + rQuestBean.getNum2();%> 
           <tr><td><%= num1AsString %>
                   <input type="hidden"
                          name="num1" value="<%=num1AsString%>" /></td>
            <td> + </td>
            <td><%= num2AsString %>
                <input type="hidden" 
                       name="num2" value="<%=num2AsString%>" /></td>
            <td>=</td>
            <td><input type="text" name="answer" size="2"></td>
       </tr>
        <% } %>
        </table><br />
        <input type="submit" name="Submit" value="Submit"/>
        Click the browser's Refresh button to get a new quiz
        </form>
    </body>
</html>
