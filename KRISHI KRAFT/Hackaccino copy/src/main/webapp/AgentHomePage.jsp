<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="Agentnavbar.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agent Home Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        color: #495057;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 800px;
        margin: auto;
        padding: 20px;
        text-align: center;
    }
    .map-container {
        margin-top: 20px;
    }
    
    
    .map-container iframe {
        width: 100%; /* Set width to 100% for responsiveness */
        max-width: 1000px; /* Limit maximum width of the map */
        height: 600px; /* Keep the height as desired */
        border: 1px solid #ced4da;
        border-radius: 10px;
    }
</style>
</head>
<body>

<div class="container">
    <h4>Empowering farmers, enriching communities. Our agents bridge the gap between farmers and buyers, ensuring fair deals and sustainable practices. Together, we cultivate prosperity from field to market.
    </h4>
    <div class="map-container">
       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d55304.792426299246!2d77.5564273!3d29.96363345!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390eea921f841f45%3A0x39baf780903811f!2sSaharanpur%2C%20Uttar%20Pradesh!5e0!3m2!1sen!2sin!4v1712412903283!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>

</body>
</html>
