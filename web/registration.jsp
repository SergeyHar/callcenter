<%@ page import="java.sql.*" %>
  Created by IntelliJ IDEA.
  User: Sergo
  Date: 25-Oct-16
  Time: 02:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
        String user = request.getParameter("uname");
        String pwd = request.getParameter("pass");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String email = request.getParameter("email");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/call_center",
                "root", "root");
        try {
            Statement st = con.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        //ResultSet rs;
        `id``name``last_name``gender``age``email``password``logo``role`
        int i = st.executeUpdate("insert into user(name, last_name, email,  pass) values ('" + user + "','" + fname + "','" + email + "','" +  pwd + "')");
        if (i > 0) {
            //session.setAttribute("userid", user);
            response.sendRedirect("welcome.jsp");
            // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
        } else {
            response.sendRedirect("index.jsp");
        }