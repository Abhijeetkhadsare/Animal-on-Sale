<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="https://www.downloadclipart.net/large/20035-circle-cow-head-design.png">   
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cats for Sale</title>
    <style>
               body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;       
            
        }
        
animal-list {
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

        header {
            background-color: #333;
            color: #fff;
            padding: 15px;
            text-align: center;
        }

        nav {
            background-color: #333;
            color: #fff;
            padding: 10px;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        nav ul li {
            display: inline;
            margin-right: 20px;
        }

        nav ul li a {
            text-decoration: none;
            color: #fff;
        }

        .content {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
           label {
            display: block;
            margin-bottom: 8px;
            color: #555;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<header>
    <h1>Animal Market</h1>

    <nav>
        <ul style="list-style: none; padding: 0;">
            <li style="display: inline; margin-right: 20px;"><a href="browse.jsp" style="text-decoration: none; color: #fff;">Browse</a></li>
            <li style="display: inline; margin-right: 20px;"><a href="sell.jsp" style="text-decoration: none; color: #fff;">Sell your Animals</a></li>
            <li style="display: inline;"><a href="logout.jsp" style="text-decoration: none; color: #fff;">Logout</a></li>
        </ul>
    </nav>
</header>
  <main>
        
        <section class="animal-list">
            <h2>Below are the details Of Cat:</h2>
            <div class="animal-card">
                <img src="https://tse3.mm.bing.net/th?id=OIP.CIZfQpbQ50XHzwkJBbKGmwHaE7&pid=Api&P=0&h=180" alt="Animal 2">
                <h3>Breed: Persian</h3>
                <p>Price: Rs.51500</p>
                <p>Description: Age:2 Health:Good Origin:England </p>
                
            </div>
<h1>Enter address for delivery</h1>

<form action="AddressServlet" method="post">
    <label for="address">Address:</label>
    <input type="text" id="address" name="address" required><br>

    <label for="city">City:</label>
    <input type="text" id="city" name="city" required><br>

    <label for="state">State:</label>
    <input type="text" id="state" name="state" required><br>

    <label for="country">Country:</label>
    <input type="text" id="country" name="country" required><br>

    <input type="submit" value="Submit">
</form>
</section>
    </main>

</body>
</html>
