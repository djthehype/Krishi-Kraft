<%@ include file="farmernavbar.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FARMER HOME PAGE</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #C5C6C7;
        margin: 0;
        padding: 0;
    }
    .slideshow-container {
        position: relative;
        hieght:100%;
        width: 100%;
        max-width: 800px;
        margin: auto;
        overflow: hidden;
    }
    .slide {
        display: none;
    }
    .slide img {
        width: 100%;
        height: auto;
    }
    .slogan {
        text-align: center;
        margin-top: 20px;
        font-size: 30px; /* Increased text size */
        color: #333;
        font-weight: bold; /* Added bold font weight */
    }
</style>
</head>
<body>
<br>
  <div class="slogan">
        <p>"किस्मत पर नहीं, परिश्रम पर विश्वास रखने वाला किसान ही है जीवन दाता"</p>
    </div>
<br>
    <div class="slideshow-container">
        <div class="slide">
            <img src="https://www.teriin.org/sites/default/files/inline-images/Terra_green.png" alt="Image 1">
        </div>
        <div class="slide">
            <img src="https://as2.ftcdn.net/v2/jpg/06/30/06/81/1000_F_630068155_RnZI6mC91wz7gUYFVmhzwpl4O6x00Cbh.jpg" alt="Image 2">
        </div>
        <div class="slide">
            <img src="https://www.millenniumpost.in/h-upload/2022/11/12/653281-stubble-burning-1.jpeg" alt="Image 3">
        </div>
        <div class="slide">
            <img src="https://www.cityairnews.com/uploads/images/image-750x-2023-11-09-02:04:33pm-654c9999f1aa2.jpg" alt="Image 3">
        </div>
        
    </div>

  
<script>
    let currentSlide = 0;
    const slides = document.querySelectorAll('.slide');

    function showSlide(index) {
        slides.forEach((slide, i) => {
            if (i === index) {
                slide.style.display = 'block';
            } else {
                slide.style.display = 'none';
            }
        });
    }

    function nextSlide() {
        currentSlide = (currentSlide + 1) % slides.length;
        showSlide(currentSlide);
    }

    setInterval(nextSlide, 3000); // Change slide every 3 seconds
</script>

</body>
</html>
