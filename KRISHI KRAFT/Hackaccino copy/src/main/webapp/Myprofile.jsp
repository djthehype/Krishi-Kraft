<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="Agentnavbar.jsp" %>
<html>
<head>
    <title>My Profile</title>
    <!-- Add your CSS styles if needed -->
</head>
<body>
    <center>
        <h2>My Profile</h2>
    </center>

    <%
        // Get the user ID from the session
        String userId = (String) session.getAttribute("userId");

        if (userId != null) {
            try {
                // Load the JDBC driver
                Class.forName("com.mysql.jdbc.Driver");

                // Connect to the database
                String url = "jdbc:mysql://localhost:3306/hackaccino";
                String username = "root";
                String password = "saini_dev79";
                Connection connection = DriverManager.getConnection(url, username, password);

                // Create a statement
                PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM userregister WHERE USERID = ?");
                preparedStatement.setString(1, userId);

                // Execute the query
                ResultSet resultSet = preparedStatement.executeQuery();

                if (resultSet.next()) {
                    // Retrieve user information from the result set
                    String userName = resultSet.getString("UNAM");
                    String userEmail = resultSet.getString("UEID");
                    String userMobile = resultSet.getString("UMOB");
                    String userAge = resultSet.getString("USTATE");
                    String userdis=resultSet.getString("UDISTRICT");
                    String usercity=resultSet.getString("UCITY");
                    String userGender = resultSet.getString("GENDER");
                    String usertype=resultSet.getString("UTYPE");
                    

    %>

    <div style="margin: 20px;">
        
        <strong>Name:</strong> <%= userName %><br>
        <strong>Email:</strong> <%= userEmail %><br>
        <strong>Mobile:</strong> <%= userMobile %><br>
        <strong>State:</strong> <%= userAge %><br>
      	 <strong>District::</strong> <%= userdis %><br>
      	  <strong>City:</strong> <%= usercity %><br>
      	   <strong>Gender:</strong> <%= userGender %><br>
    	<strong>Type:</strong> <%= usertype %><br>
    	
       
        
    </div>

    <%
                } else {
    %>

    <div style="margin: 20px;">
        <p>No user found with the provided ID.</p>
    </div>

    <%
                }

                // Close resources
                resultSet.close();
                preparedStatement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
    %>

    <div style="margin: 20px;">
        <p>No user ID found in the session. Please log in.</p>
    </div>

    <%
        }
    %>

    <!-- Add your HTML structure or additional content as needed -->

</body>
</html>
