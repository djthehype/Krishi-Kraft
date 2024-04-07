package User;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Login() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
        
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackaccino", "root", "saini_dev79");

            PreparedStatement stmt = con.prepareStatement("select * from userregister where UEID=? and UPWD =? and UTYPE=?");

            String uemail, upwd, utype;
            uemail = request.getParameter("name");
            upwd = request.getParameter("pass");
            utype = request.getParameter("type");

            HttpSession session = request.getSession();
            session.setAttribute("UEID", uemail);
            session.setAttribute("UPWD", upwd);
            session.setAttribute("UTYPE", utype);

            stmt.setString(1, uemail);
            stmt.setString(2, upwd);
            stmt.setString(3, utype);

            ResultSet rset = stmt.executeQuery();

            if (rset.next()) {
                // Set the user ID as a session attribute
               int userId = rset.getInt("USERID");
                //session.setAttribute("userId", String.valueOf(userId));

                if ("admin@gmail.com".equals(uemail) && "admin".equals(upwd) && "admin".equals(utype)) {
                    // Redirect to AdminHomePage.jsp if admin credentials
                    response.sendRedirect("/Hackaccino/AdminHomePage.jsp");
                } else if ("Farmer".equalsIgnoreCase(utype) || "Agent".equalsIgnoreCase(utype)) {
                    // Redirect to FarmerHomePage.jsp or AgentHomePage.jsp
                    String userTypeHomePage = utype + "HomePage.jsp";
                    response.sendRedirect("/Hackaccino/" + userTypeHomePage);
                } else {
                    // Redirect to Homepg.jsp for regular users
                    response.sendRedirect("/Hackaccino/Homepg.jsp");
                }
            } else {
                // Redirect to registration page if user not found
                response.sendRedirect("/Hackaccino/register.jsp");
            }
        } catch (SQLException e) {
            // Handle the exception or log it
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // Handle the exception or log it
            e.printStackTrace();
        }
    }

    public void destroy() {
        // You don't need to close the connection and statement here
    }
}
