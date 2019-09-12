<%@page import="java.sql.*"%> <%@page import="java.io.*"%>
 <html>

<body>
<% String id=request.getParameter("id"); 
 String pwd=request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bibliohub","root","sanjita");

Statement stmt=con.createStatement();
String sqlstmt="select id,pwd from register";
 ResultSet rs=stmt.executeQuery(sqlstmt);
 int flag=0;
while(rs.next())
{
if(id.equals(rs.getString(1))&&pwd.equals(rs.getString(2)))
{
flag=1;
}
}
if(flag==0)
{

out.println("<br><br>SORRY INVALID ID TRY AGAIN ID<br><br>"); out.println("<a href=\"log.html\">press LOGIN to RETRY</a>");

}
else

{ out.println("<br><br>VALID LOGIN ID<br><br>");
 out.println("WELCOME <br>To<br>"+id); 

}
con.close();
%>
</body>

</html>
 
































