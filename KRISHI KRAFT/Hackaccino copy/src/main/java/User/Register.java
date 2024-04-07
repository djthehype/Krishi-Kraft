package User;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import User.maxid;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet {
    private static final long serialVersionUID = 1L;
   

    public Register() {
        super();
    }

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        maxid ss = new maxid();
        int a = 0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            a = ss.retid();
          
        int s = a + 1;
        int userid = s;
        String username = request.getParameter("username");
        String useremail = request.getParameter("useremail");
        String userpass = request.getParameter("userpass");
        int usermobile = Integer.parseInt(request.getParameter("usermobile"));

        
        String userstate = request.getParameter("userstate");
        String userdistrict=request.getParameter("userdistrict");
        String usercity=request.getParameter("usercity"); 
        String usergender = request.getParameter("usergender");
        String usertype=request.getParameter("usertype");

       out.println(userid);
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackaccino", "root", "saini_dev79");
            PreparedStatement stmt = con.prepareStatement("insert into userregister values (?, ?, ?, ? ,? ,? ,?, ?, ?,? )");

            stmt.setInt(1, userid);
            stmt.setString(2, username);
            stmt.setString(3, useremail);
            stmt.setString(4, userpass);
            stmt.setInt(5, usermobile);
            stmt.setString(6,userstate );
           
            stmt.setString(7,userdistrict);
            stmt.setString(8, usercity);
            stmt.setString(9, usergender);
            stmt.setString(10,usertype);

            int rowsAffected = stmt.executeUpdate();

            if (rowsAffected > 0) {
                // Insertion successful
                response.sendRedirect("/Hackaccino/loginpage.jsp");
            } else {
                // Insertion failed
                response.sendRedirect("/Hackaccino/Homepg.jsp");
            }

            // Close the PreparedStatement
            stmt.close();

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    public void destroy() {
        try {
        	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackaccino", "root", "saini_dev79");
            if (con != null) {
                con.close();
            }
        } catch (SQLException se) {
            System.out.println(se.getMessage());
        }
    }
}
