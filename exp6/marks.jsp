<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Result</title>
</head>
<body>
<center>
    <h1>Your results are ready!</h1>
    <%
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/register", "root", "root");
        Statement stmt = con.createStatement();
        int x = Integer.parseInt(request.getParameter("roll"));
        int c = 0;
        String sql = "SELECT Mark1,Mark2,Mark3,Total,Name FROM REGISTER WHERE Rollno=" + x;
        ResultSet rs = stmt.executeQuery(sql);
        while (rs.next()) {
            c = 1;
            int s = rs.getInt(4);
            if (s < 0) {
                out.println("You have not taken the test");
            } else {
                out.println("<table border=3>");
                out.println("<tr>");
                out.println("<th>Name</th>");
                out.println("<th>Mark1</th>");
                out.println("<th>Mark2</th>");
                out.println("<th>Mark3</th>");
                out.println("<th>Total</th>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td>" + rs.getString(5) + "</td>");
                out.println("<td>" + rs.getInt(1) + "</td>");
                out.println("<td>" + rs.getInt(2) + "</td>");
                out.println("<td>" + rs.getInt(3) + "</td>");
                out.println("<td>" + rs.getInt(4) + "</td>");
                out.println("</tr>");
                out.println("</table>");
            }
        }
        if (c == 0) {
            out.println("Your have entered wrong number");
        }
    %>
</center>
</body>
</html>