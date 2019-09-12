import java.io.*;
import java.servlet.*;
import javax.servlet.http.*;
public class ReadPar extends HttpServlet{

public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException,ServletException {
res.setContent("text/html");
PrintWriter out=res.getWriter();
String id=req.getParameter("id");
Out.print("id is "+id);
}
}
