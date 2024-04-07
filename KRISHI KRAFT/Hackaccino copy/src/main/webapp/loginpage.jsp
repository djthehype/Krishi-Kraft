<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
        }

        center {
            margin-top: 10%;
        }

        h1 {
            color: #333;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        a {
            text-decoration: none;
            color: #333;
            display: block;
            margin-top: 10px;
        }

        a:hover {
            color: #4caf50;
        }
    </style>
</head>

<body>
    <center>
        <h1>Login</h1>
        <form action='loginpage' method="get">
        	<input type="text" placeholder="Usertype" name="type" /><br><br>
            <input type="text" placeholder="Username" name="name" /><br><br>
            <input type="password" placeholder="Password" name="pass" /><br><br>
            <button type="submit">SUBMIT</button>
        </form>
         <p>Don't have an account?</p> <a href="/Hackaccino/register.jsp">REGISTER</a>
    </center>
</body>

</html>
