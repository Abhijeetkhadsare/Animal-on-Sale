<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="https://www.downloadclipart.net/large/20035-circle-cow-head-design.png">  
    <title>Animal Market - Home</title>
    <link rel="stylesheet" href="styles.css"> <!-- Include your stylesheet here -->
    <style>
        
        
    /* Reset some default styles */
body, h1, h2, h3, p, ul, li {
    margin: 0;
    padding: 0;
}

/* Basic styles for the layout */
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
}

header {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 20px;
}


nav ul {
    background-color: #333;
    list-style-type: none;
    text-align: center;
    padding: 10px;
}


nav ul li {
    display: inline;
    margin-right: 20px;
}


nav ul li a {
    text-decoration: none;
    color: white;
}

main {
    max-width: 800px;
    margin: 20px auto;
    padding: 20px;
    background-color: white;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}


.featured-animals {
    margin-bottom: 20px;
}


.animal-card {
    border: 1px solid #ddd;
    padding: 10px;
    margin-bottom: 20px;
}

.animal-card img {
    max-width: 100%;
}


footer {
    text-align: center;
    background-color: #333;
    color: white;
    padding: 10px;
}
 
/* Additional styles for the animal listings */
        .animal-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .animal-card {
            width: calc(33.33% - 20px);
            margin-bottom: 20px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
        }

        .animal-card img {
            max-width: 100%;
            height: auto;
        }

        .animal-card h3 {
            font-size: 18px;
            margin-top: 10px;
        }

        .animal-card p {
            font-size: 14px;
            margin: 10px 0;
        }

        .buy-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #333;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .buy-button:hover {
            background-color: #555;
        }
    </style>
</head>
<body style="background-image: url('http://www.pixelstalk.net/wp-content/uploads/2016/06/Light-Blue-HD-Backgrounds-Free-Download.jpg');">
    <header>
        <h1>Animal Market</h1>
    </header>

    <nav>
        <ul>
         
            <li><a href="browse.jsp">Browse Animals</a></li>
            <li style="display: inline; margin-right: 20px;"><a href="sell.jsp" style="text-decoration: none; color: #fff;">Sell your Animals</a></li>
            <li><a href="mission.jsp">Our Mission</a></li>
            <li><a href="logout.jsp">logout</a></li>
        </ul>
    </nav>

    <main>
        
        <section class="animal-list">
            <h2>Cats for Sale</h2>
            <!-- cat1 -->
            <div class="animal-card">
                <img src="https://tse3.mm.bing.net/th?id=OIP.oKGVv3_Ml6AL6S1ENT_vSAHaFj&pid=Api&P=0&h=180" alt="Animal 1">
                <h3>Breed: Rag Doll</h3>
                <p>Price: Rs.13000</p>
                <p>Description: Age:2 Health:Good Origin:Australia </p>
                <a href="cat1.jsp" class="buy-button">Buy</a>
            </div>
            <!-- cat2 -->
            <div class="animal-card">
                <img src="https://tse3.mm.bing.net/th?id=OIP.CIZfQpbQ50XHzwkJBbKGmwHaE7&pid=Api&P=0&h=180" alt="Animal 2">
                <h3>Breed: Persian</h3>
                <p>Price: Rs.51500</p>
                <p>Description: Age:2 Health:Good Origin:England </p>
                <a href="cat2.jsp" class="buy-button">Buy</a>
            </div>
            <!-- cat3 -->            
            <div class="animal-card">
                <img src="https://tse3.mm.bing.net/th?id=OIP.9ZGCqh1M4L0LZlSP8Xa33gHaEo&pid=Api&P=0&h=180" alt="Animal 1">
                <h3>Breed: Aegean</h3>
                <p>Price: Rs.15900</p>
                <p>Description: Age:2 Health:Good Origin:Greece </p>
                <a href="cat3.jsp" class="buy-button">Buy</a>
            </div>
            <!-- cat4 -->
            <div class="animal-card">
                <img src="https://tse2.mm.bing.net/th?id=OIP.GYlE6p9X1w6oUPyGjvvUtgHaEO&pid=Api&P=0&h=180" alt="Animal 2">
                <h3>Breed: Mau</h3>
                <p>Price: Rs.24850</p>
                <p>Description: Age:2 Health:Good Origin:Bangladesh </p>
                <a href="cat4.jsp" class="buy-button">Buy</a>
            </div>
            <!-- cat5 -->            
            <div class="animal-card">
                <img src="https://tse2.mm.bing.net/th?id=OIP.Aurt0U8JVGj5gtVmcKPOAAHaEo&pid=Api&P=0&h=180" alt="Animal 1">
                <h3>Breed: Asian</h3>
                <p>Price: Rs.22000</p>
                <p>Description: Age:2 Health:Good Origin:UK</p>
                <a href="cat5.jsp" class="buy-button">Buy</a>
            </div>
            <!-- cat6 -->
            <div class="animal-card">
                <img src="https://tse1.mm.bing.net/th?id=OIP.99-Ub0vugOXKqI7ZrOpiLwHaE8&pid=Api&P=0&h=180" alt="Animal 2">
                <h3>Breed: Balinese</h3>
                <p>Price: Rs.31000</p>
                <p>Description: Age:2 Health:Good Origin:Thailand</p>
                <a href="cat6.jsp" class="buy-button">Buy</a>
            </div>
            

            <!-- Repeat the above animal cards for other animals -->
        </section>
    </main>

 
    
    <footer>
        <p>&copy; 2023 Animal Market</p>
    </footer>
</body>
</html>
