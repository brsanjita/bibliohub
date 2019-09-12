import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class FirstServlet extends HttpServlet {
public static void main(String[] args){
    String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    String DB_URL = "jdbc:mysql://localhost:3306/bibliohub";
    String USER = "root";
    String PASS = "sanjita";

    public void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        Connection conn = null;
        Statement stmt = null;try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(DB_URL, USER, PASS);
        System.out.println("Database..");
        stmt = conn.createStatement();
        String id = null;
        String pwd = null;
        String query = "SELECT id, pwd FROM login;";
            stmt.executeQuery(query);
            ResultSet rs = stmt.getResultSet();

            while(rs.next()){
                id = rs.getString("id");
                pwd = rs.getString("pwd");
                //check null's also 
                if(id.equals(id) && pwd.equals(pwd)){
                   System.out.println("sucess");

                }

            }
        }  catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
}