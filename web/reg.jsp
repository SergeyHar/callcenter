<%--
  Created by IntelliJ IDEA.
  User: Sergo
  Date: 25-Oct-16
  Time: 02:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Registration</title>
        </head>
    <body>
        <form method="post" action="registration.jsp">
                <center>
                <table border="1" width="30%" cellpadding="5">
                    <thead>
                    <tr>
                            <th colspan="2">Enter Information Here</th>
                        </tr>
                </thead>
                    <tbody>
                    <tr>
                            <td>First Name</td>
                            <td><input type="text" name="fname" value="" /></td>
                        </tr>
                    <tr>
                            <td>Last Name</td>
                            <td><input type="text" name="lname" value="" /></td>
                        </tr>
                    <tr>
                            <td>Email</td>
                            <td><input type="text" name="email" value="" /></td>
                        </tr>
                    <tr>
                            <td>User Name</td>
                            <td><input type="text" name="uname" value="" /></td>
                        </tr>
                    <tr>
                            <td>Password</td>
                            <td><input type="password" name="pass" value="" /></td>
                        </tr>
                    <tr>
                            <td><input type="submit" value="Submit" /></td>
                            <td><input type="reset" value="Reset" /></td>
                        </tr>
                    <tr>
                            <td colspan="2">Already registered!! <a href="index.jsp">Login Here</a></td>
                        </tr>
                </tbody>
                </table>
                </center>
            </form>
    </body>
</html>