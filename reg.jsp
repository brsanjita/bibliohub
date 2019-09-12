

<%@page import="java.sql.*"%>
 <%@page import="java.io.*"%>
<%@page import="com.mysql.*"%>
<% response.setContentType("text/html"); 
out.println("<html><body>");
String Firstname=request.getParameter("Firstname");
String Lastname=request.getParameter("Lastname");
//int date=request.getParameter("date"));
 //String month=request.getParameter("month");
//int year=request.getParameter("year");
String gender=request.getParameter("gender");
 String id=request.getParameter("id");
 String pwd=request.getParameter("pwd");
String recid=request.getParameter("recid");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bibliohub","root","sanjita");

Statement stmt=con.createStatement();
 String sqlstmt="select Firstname,Lastname,id,pwd,recid from register"; 
ResultSet rs=stmt.executeQuery(sqlstmt);
 int flag=0;
while(rs.next())
{ 
if(id.equals(rs.getString(1))&&pwd.equals(rs.getString(2)))
 { flag=1; 

}
}
if(flag==1)
{ out.println("<br><br>SORRY INVALID ID ALREADY EXITS TRY AGAIN WITH NEW ID<br><br>");

out.println("<a href=\"register.html\">press REGISTER to RETRY</a>");
}
else
{ Statement stmt1=con.createStatement();
 stmt1.executeUpdate("insert into register values('"+Firstname+"','"+Lastname+"','"+id+"','"+pwd+"','"+recid+"');");
 out.println("<center><br><br>YOU HAVE SUCCESSFULLY SIGNED UP!<br><br></center>");
 out.println("<center><a href=\"log.html\">press LOGIN to Sign In</a></center>");
}
out.println("</body></html>");
con.close();
%>








 




		
 




































