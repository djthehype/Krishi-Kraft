<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .container {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .container label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
        .container input[type="text"],
        .container input[type="email"],
        .container input[type="password"],
        .container input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .container button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .container button:hover {
            background-color: #45a049;
        }
        .container div {
            margin-bottom: 20px;
        }
        .container div:last-child {
            margin-bottom: 0;
        }
        .container center {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <center>
        <form action='Register' method="post">
            <div class="container">
                <div>
                    <label>Name</label>
                    <input type="text" class="form-control" id="inputAddress" placeholder="Enter Your Name" name="username">
                </div>
                <div>
                    <label>Email</label>
                    <input type="email" class="form-control" id="inputEmail" name="useremail">
                </div>
                <div>
                    <label>Password</label>
                    <input type="password" class="form-control" id="inputPassword" name="userpass">
                </div>
                <div>
                    <label>Mobile</label>
                    <input type="number" class="form-control" id="inputmobile" name="usermobile">
                </div>
                <div>
                    <label>State</label>
                    <input type="text" class="form-control" id="inputstate" name="userstate">
                </div>
                <div>
                    <label>District</label>
                    <input type="text" class="form-control" id="inputudistrict" name="userdistrict">
                </div>
                <div>
                    <label>City</label>
                    <input type="text" class="form-control" id="inputcity" name="usercity">
                </div>
                <div>
                    <label>Gender</label>
                    <input type="text" class="form-control" id="inputgender" name="usergender">
                </div>
                <div>
                    <label>Usertype</label>
                    <input type="text" class="form-control" id="inpututype" name="usertype">
                </div>
                <div>
                    <button type="submit">Register</button>
                </div>
            </div>
        </form>
        <p>Already have an account?</p> <a href="/Hackaccino/loginpage.jsp">LOGIN</a>
    </center>
</body>
</html>
