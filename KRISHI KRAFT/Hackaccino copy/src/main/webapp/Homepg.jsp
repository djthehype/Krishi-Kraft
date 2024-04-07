<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Krishi Kraft</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #EDF5E1;
            color: #fff; /* Changed text color to white */
            margin: 0;
            padding: 0;
            position: relative; /* Added position relative for positioning the bubble */
        }
        .container {
            max-width: 0 auto; /* Adjusted container width */
            margin: 0 auto;
            padding: 2px; /* Added padding */
        }
        .header-buttons {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 2px solid #484848; /* Changed border color to white */
            padding-bottom: 10px;
            margin-bottom: 20px; /* Added margin bottom */
        }
        .header-buttons .btn {
            margin-right: 10px;
            font-weight: bold; /* Added bold font weight */
        }
        h1 {
            text-align: center;
            color: #94ffaa; /* Changed text color */
            text-transform: uppercase;
            margin-bottom: 30px; /* Added margin bottom */
        }
        /* Bubble Design for Quotes */
        .bubble {
            background-color: #777975; /* Blue color */
            color: #fff;
            padding: 40px 40px;
            border-radius: 25px;
            border-top-left-radius: 30px;
            border-top-right-radius: 30px;
            border-bottom-left-radius: 30px;
            border-bottom-right-radius: 30px;
            align-items: center;
            position: absolute;
            bottom: -290px; /* Adjusted distance from bottom */
            right: 180px; /* Adjusted distance from right */
            max-width: 450px; /* Added max-width */
            z-index: 999; /* Added higher z-index to appear above other elements */
        }
        /* Irony Line */
        .irony-line {
            position: absolute;
            bottom: 40px; /* Adjusted distance from bottom */
            right: 30px; /* Adjusted distance from right */
            color: #777975; /* Blue color */
            text-decoration: wavy;
            z-index: 998; /* Lower z-index than bubble */
        }
        img.center {
            display: block;
            margin: 0 auto;
            max-width: 40%; /* Adjusted image width to half of the original */
            height: auto; /* This will adjust proportionally */
            border-radius: 10px; /* Added border radius */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Added box shadow */
        }
        .carousel-item {
            width: 70%; /* Adjusted width of the slider window */
            height: auto; /* Adjusted height of the slider window */
            margin: auto 0 auto calc(200px); /* Shift the slider to the right */
            overflow: hidden; /* Hide any overflowing content */
        }
        .carousel-item img {
            width: 100%;
            height: auto;
            object-fit: cover;
            border-radius: 10px;
        }
        #map {
            height: 400px;
            width: 100%;
            border-radius: 10px; /* Added border radius */
            margin-top: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Added box shadow */
        }
        /* Legend Styles */
        #legend {
    margin-top: 20px;
    padding: 20px;
    background-color: rgba(90, 90, 90, 0.8);
    border-radius: 25px;
    border-top-left-radius: 30px;
    border-top-right-radius: 30px;
    border-bottom-left-radius: 30px;
    border-bottom-right-radius: 30px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    max-width: 400px;
    position: absolute;
    left: 35%;
    transform: translateX(-50%);
}
        .legend-item {
            display: flex;
            align-items: center;
            margin-bottom: 10px; /* Adjusted margin */
        }
        .legend-color {
            width: 20px;
            height: 20px;
            margin-right: 10px;
            border-radius: 50%; /* Made circle */
        }
                @keyframes bounce {
            0% { left: -100%; }
            75% { left: 75%; }
            50% { left: 50%; }
            25% { left: 25%; }
            0% { left: -100%; }
        }

        .animated-image {
            position: relative;
            animation: bounce 6s infinite;
        }
        
    
    </style>
</head>
<body>

<div class="container">
   
    <img src="https://www.jaijawan-jaikisan.com/wp-content/uploads/2017/01/LOGO-Jai-Jawan-Jai-Kisan.png" alt="Your Image" class="center animated-image">

    <div id="carouselExampleControls" class="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://bl-i.thgim.com/public/incoming/5v1rva/article66314094.ece/alternates/LANDSCAPE_1200/PTI12_23_2022_000137B.jpg" class="d-block w-100" alt="Image 1">
            </div>
            <div class="carousel-item">
                <img src="https://c.ndtvimg.com/2021-11/tirjtkjg_stubble-burningpunjabpti-_625x300_13_November_21.jpg" class="d-block w-100" alt="Image 2">
            </div>
            <div class="carousel-item">
                <img src="https://akm-img-a-in.tosshub.com/indiatoday/images/story/202310/no-takers-for-decomposers-in-punjab--haryana-even-as-stubble-burning-on-the-rise-022119181-16x9_0.jpg?VersionId=Sel1tUDfTkhZpRwAEjkyMcP6.0BYNOQ6&size=690:388" class="d-block w-100" alt="Image 3">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <div class="map-container">
        <div id="map"></div>
    </div>

    <!-- Bubble for Quotes -->
    <div class="bubble">
        <p>Let's not play a game called 'Who Can Irritate Their Neighbors the Most with Smoke Signals?'</p>
        <p>Let's see if we are making our cities resemble silent, smokey movie scenes from the 1920s.</p>
        <p>A study has reported that humans are responsible for about 90% of biomass burning.</p>
    </div>

    <!-- Irony Line -->
    <div class="irony-line">
    </div>

    <!-- Legend -->
    <div id="legend"></div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

<script>
    function initMap() {
        // Create map centered at the user's location
        navigator.geolocation.getCurrentPosition(function(position) {
            var userLatLng = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };

            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 8,
                center: userLatLng // Centering the map at user's location
            });

            // Add marker for user's location
            var userMarker = new google.maps.Marker({
                position: userLatLng,
                map: map,
                icon: {
                    url: 'http://maps.google.com/mapfiles/ms/icons/red-dot.png' // Red icon URL
                },
                title: 'Your Location'
            });

            var zones = [
                {lat: 27.1751, lng: 78.0421, radius: 30000, color: '#00FF00', quality: 'Good', range: '0 to 50 AQI'}, // Green
                {lat: 29.6265, lng: 76.4546, radius: 80000, color: '#FFFF00', quality: 'Moderate', range: '51 to 100 AQI'}, // Yellow
                {lat: 30.7964, lng: 75.7919, radius: 50000, color: '#FFA500', quality: 'Unhealthy for Sensitive Groups', range: '101 to 150 AQI'}, // Orange
                {lat: 41.2648, lng: 75.1071, radius: 40000, color: '#FF0000', quality: 'Unhealthy', range: '151 to 200 AQI'}, // Red
                {lat: 25.3732, lng: 85.1531, radius: 70000, color: '#800080', quality: 'Very Unhealthy', range: '201 to 300 AQI'}, // Purple 25°37'32.3"N 85°15'31.6"E
                {lat: 31.2678, lng: 75.1050, radius: 50000, color: '#800000', quality: 'Hazardous', range: '301 and higher AQI'} // Maroon  
                // Example zone 3
            ];
            zones.forEach(function(zone) {
                var center = {lat: zone.lat, lng: zone.lng};

                // Define circle properties with color from the zone
                var circleOptions = {
                    strokeColor: zone.color,
                    strokeOpacity: 0.8,
                    strokeWeight: 2,
                    fillColor: zone.color,
                    fillOpacity: 0.35,
                    map: map,
                    center: center,
                    radius: zone.radius
                };

                // Create circle
                var circle = new google.maps.Circle(circleOptions);

                // Add marker for each zone
                var marker = new google.maps.Marker({
                    position: center,
                    map: map,
                    title: 'Quality: ' + zone.quality + ', Range: ' + zone.range
                });
            });

            // Generate legend
            var legend = document.getElementById('legend');
            zones.forEach(function(zone) {
                var legendItem = document.createElement('div');
                legendItem.className = 'legend-item';
                var legendColor = document.createElement('div');
                legendColor.className = 'legend-color';
                legendColor.style.backgroundColor = zone.color;
                legendItem.appendChild(legendColor);
                legendItem.appendChild(document.createTextNode(zone.quality + ' (' + zone.range + ')'));
                legend.appendChild(legendItem);
            });
        }, function() {
            handleLocationError(true, map.getCenter());
        });
    }

    function handleLocationError(browserHasGeolocation, initialLocation) {
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 5,
            center: initialLocation
        });
        map.setCenter(initialLocation);
    }
</script>

<!-- Replace YOUR_API_KEY with your actual Google Maps API key -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDIzoIBn82Z1fWqsemmQba1am1OG6ilXF4&callback=initMap" async defer></script>
</body>
</html>
