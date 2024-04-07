<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Details</title>
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
    <table border="1">
        <thead>
            <tr>
                <th>Product No</th>
                <th>Image</th>
                <th>Name</th>
                <th>Description</th>
                <th>Min Price</th>
                <th>Max Price</th>
            </tr>
        </thead>
        <tbody>
            <% 
                try {
                    // Establishing Database Connection
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hackaccino", "root", "saini_dev79");
                    
                    // Preparing SQL Query
                    String sql = "SELECT * FROM product";
                    PreparedStatement ps = con.prepareStatement(sql);
                    
                    // Executing Query
                    ResultSet rs = ps.executeQuery();
                    
                    // Iterating through results and displaying in table rows
                    while(rs.next()) {
            %>
            <tr>
                <td><%= rs.getInt("pno") %></td>
                <td><img src="img/<%= rs.getString("pimage") %>" alt="Product Image" height="100"></td>
                <td><%= rs.getString("pname") %></td>
                <td><%= rs.getString("pdescrptn") %></td>
                <td><%= rs.getInt("minpprice") %></td>
                <td><%= rs.getInt("maxprice") %></td>
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
