<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>JSP Page</title>
 <style>
 h2{
 border-bottom: 2px solid #000;
 padding-bottom: 20px;
 }
 #button{
 border: 2px solid #000;
 border-radius:5px;
 padding: 15px 15px;
 text-decoration: none;
 background-color: #ffffff;
 font-family: sans-serif;
 font-size: 17px;
 font-weight:bold;
 justify-content: center;
 color:#000;
 margin: 4px 2px;
 cursor: pointer;
 display: inline-block;
 }
 </style>
 </head>
 <body>
 <%
 String a1=request.getParameter("uname");
 String a2=request.getParameter("uroll");
 String a3=request.getParameter("upass");
 int x=-1;
 Class.forName("org.apache.derby.jdbc.ClientDriver");
 Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/register","root","root");
 Statement stmt=con.createStatement();
 String SQL="INSERT INTO REGISTER (Name,Rollno,Password,Mark1,Mark2,Mark3,Total)
VALUES(?,?,?,?,?,?,?)";
 PreparedStatement p=con.prepareStatement(SQL);
 p.setString(1,a1);
 p.setString(2,a2);
 p.setString(3,a3);
 p.setInt(4,x);
 p.setInt(5,x);
 p.setInt(6,x);
 p.setInt(7,x);
 p.executeUpdate();
 p.close();
 //out.println("You have successfully registered");
 %>
 <center>
 <h2 style="font-family: sans-serif;">You Have Successfully Registered !</h2><br><br>
 <a id="button" href="test.html">Take test</a><br><br><br>

 </center>
 </body>
 </body>
</html>
