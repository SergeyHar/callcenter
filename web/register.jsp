<%@ page import="java.io.PrintWriter" %>
<%@ page import="sun.misc.IOUtils" %>
<%@ page import="java.io.InputStreamReader" %><%--
  Created by IntelliJ IDEA.
  User: Sergo
  Date: 25-Oct-16
  Time: 01:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration</title>
</head>
<body>
<h1>Registration</h1>
<p>Please fill in the form below, then click on the 'Register'
    button</p>
<form action="register.jsp" method="post">
    <dl>
        <dt><label for="username">Username: </label></dt>
        <dd><input type="text" id="username" name="username"></dd>
        <dt><label for="password">Password: </label></dt>
        <dd><input type="password" id="password" name="password"></dd>
        <dt><label for="password">Verification: </label></dt>
        <dd><input type="password" id="verification" name="verification"></dd>
        <dt><label for="firstname">First name: </label></dt>
        <dd><input type="text" id="firstname" name="firstname"></dd>
        <dt><label for="lastname">Last name: </label></dt>
        <dd><input type="text" id="lastname" name="lastname"></dd>
        <dt><label for="email">E-mail address: </label></dt>
        <dd><input type="text" id="email" name="email"></dd>
        <dd><input type="submit" name="register" value="Register"></dd>
    </dl>


    <%=  response.getStatus()
    %>

        <%

            if (200 <= response.getStatus() && response.getStatus() <= 299) {
                br = new BufferedReader(new InputStreamReader((response.g.getInputStream())));
            } else {
                br = new BufferedReader(new InputStreamReader((conn.getErrorStream())));
            }

    double num = Math.random();
    if (num > 0.95) {
  %>
    <h2>You'll have a luck day!</h2><p>(<%= num %>)</p>
        <%
    } else {
  %>
    <h2>Well, life goes on ... </h2><p>(<%= num %>)</p>
        <%
    }
  %>
    <a href="<%= request.getRequestURI() %>"><h3>Try Again</h3></a>




</form>
</body>
</html>