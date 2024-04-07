package User;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class maxid {

	
	public int retid() throws SQLException, ClassNotFoundException{
        Class.forName("com.mysql.jdbc.Driver");
        
        Connection  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackaccino", "root", "saini_dev79");
        int s=0;
        PreparedStatement stmt = conn.prepareStatement("select max(userid) from userregister");
        ResultSet rs=stmt.executeQuery();  
        while(rs.next()) {
        	s=rs.getInt(1);
        	
        	}
        
        	
   
        
        
        return s;
	};
	
}
