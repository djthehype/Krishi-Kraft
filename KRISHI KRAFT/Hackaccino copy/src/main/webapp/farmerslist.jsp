<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="Agentnavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agent Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        h1 {
            text-align: center;
            margin-top: 30px;
        }

        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        tr:hover {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<br>
<center><h3>Farmer Details</h3></center>
    <br>
    <table border="1">
        <thead>
            <tr>
                <th>Name</th>
                <th>Mobile Number</th>
                <th>E-mail</th>
                <th>State</th>
                <th>District</th>
                <th>Area</th>
            </tr>
        </thead>
        <tbody>
            <% 
                try {
                    // Establishing Database Connection
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackaccino", "root", "saini_dev79");
                    
                    // Preparing SQL Query
                    String sql = "SELECT UNAM, UMOB, UEID, USTATE, UDISTRICT, UCITY FROM userregister WHERE UTYPE = 'Farmer'";
                    PreparedStatement ps = con.prepareStatement(sql);
                    
                    // Executing Query
                    ResultSet rs = ps.executeQuery();
                    
                    // Iterating through results and displaying in table rows
                    while(rs.next()) {
            %>
            <tr>
                <td><%= rs.getString("UNAM") %></td>
                <td><%= rs.getString("UMOB") %></td>
                <td><%= rs.getString("UEID") %></td>
                <td><%= rs.getString("USTATE") %></td>
                <td><%= rs.getString("UDISTRICT") %></td>
                <td><%= rs.getString("UCITY") %></td>
            </tr>
            <% 
                    }
                    
                    // Closing resources
                    rs.close();
                    ps.close();
                    con.close();
                    
                } catch (Exception e) {
                    out.println("An error occurred: " + e.getMessage());
                    e.printStackTrace();
                }
            %>
        </tbody>
    </table>
</body>
</html>
