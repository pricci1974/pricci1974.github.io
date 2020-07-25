<%-- 
    Document   : RandomResults
    Created on : Jul 22, 2020, 6:11:17 PM
    Author     : pdr04
--%>

<%@page import="com.mycompany.chapter38.RandomAddProblem"%>
<jsp:useBean id="rQuestBean" scope="session"
             class="com.mycompany.chapter38.RandomAddProblem">
</jsp:useBean>
<jsp:setProperty name="rQuestBean" property="*"/> 
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <table>
        <% for (int i = 0; i < 10;i++) {
            String[] answers = request.getParameterValues("answer");
            String[] num1 = request.getParameterValues("num1");
            String[] num2 = request.getParameterValues("num2");
            %>
            <tr>
                <td><%out.print(num1[i]);%></td><td>+</td>
                <td><%out.print(num2[i]);%></td><td>=</td>
                <td><%=answers[i]%></td>
        <td><%out.print((rQuestBean.isCorrect(
                num1[i], num2[i], answers[i]))? "Correct" : "Wrong");%></td>
            </tr>
        <% } %>
        </table>
        The total correct count is <%=rQuestBean.getCount()%><br />
        <%=rQuestBean.getRating()%>
    </body>
</html>
