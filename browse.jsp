<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.Arrays" %>
<%@ include file="header.jsp" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <link rel="shortcut icon" href="https://www.downloadclipart.net/large/20035-circle-cow-head-design.png">   
    <title>Browse Animals for Sale</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
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

        form {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }
        
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
        
        .content {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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


<%
    // Mock data: replace this with your actual data retrieval logic
  List<String> animalCategories = Arrays.asList("Cats", "Dogs", "Sheeps", "Buffalos", "Cows");

    
    // Check if the user is logged in
    HttpSession session1 = request.getSession(false);
    String username = (session1 != null) ? (String) session1.getAttribute("username") : null;

    if (username != null) {
        // User is logged in, display animal category dropdown and results
%>


        <form action="browse.jsp" method="post">
            <label for="category">Select Animal Category:</label>
            <select id="category" name="category">
                <option value="" selected disabled>Select Category</option>
                <% for (String category : animalCategories) { %>
                    <option value="<%= category %>"><%= category %></option>
                <% } %>
            </select>
            <input type="submit" value="Browse">
        </form>
            
        <%
    // Process the form submission
    String selectedCategory = request.getParameter("category");
    if (selectedCategory != null) {
        // Redirect to the corresponding JSP page based on the selected category
        if (selectedCategory.equalsIgnoreCase("Cats")) {
            response.sendRedirect("cat.jsp");
        } else if (selectedCategory.equalsIgnoreCase("Dogs")) {
            response.sendRedirect("dog.jsp");
        }else if (selectedCategory.equalsIgnoreCase("Sheeps")) {
            response.sendRedirect("sheep.jsp");
        }else if (selectedCategory.equalsIgnoreCase("Buffalos")) {
            response.sendRedirect("buffaloes.jsp");
        }else if (selectedCategory.equalsIgnoreCase("Cows")) {
            response.sendRedirect("home.jsp");
        }
        // Add more conditions for other categories as needed
    }
%>


        <!-- Display results here based on selected category -->
        <div class="content">
            <section class="animal-list">
            
            <div class="animal-card">
                <img src="https://tse3.mm.bing.net/th?id=OIP.9ZGCqh1M4L0LZlSP8Xa33gHaEo&pid=Api&P=0&h=180" alt="Animal 1">
                <h3>Breed: Aegean</h3>
                <p>Price: Rs.15900</p>
                <p>Description: Age:2 Health:Good Origin:Greece </p>
                <a href="cat3.jsp" class="buy-button">Buy</a>
            </div>
                
            <div class="animal-card">
                <img src="https://tse4.mm.bing.net/th?id=OIP.8eyWWmOgvS8c-Ek29OveLAHaFj&pid=Api&P=0&h=180" alt="Animal 2">
                <h3>Breed: Dexter</h3>
                <p>Price: Rs.95500</p>
                <p>Description: Milk: 30L, Age:4yrs, Health: Good.</p>
                <a href="cow8.jsp" class="buy-button">Buy</a>
            </div>
                
            <div class="animal-card">
                <img src="https://tse2.mm.bing.net/th?id=OIP.k1w708692METNkHuvh5dKgHaFj&pid=Api&P=0&h=180" alt="Animal 2">
                <h3>Breed: Nagori</h3>
                <p>Price: Rs.85800</p>
                <p>Description: Milk: 25L, Age:3yrs, Health: Good.</p>
                <a href="cow6.jsp" class="buy-button">Buy</a>
            </div>
            
            <div class="animal-card">
                <img src="https://tse3.mm.bing.net/th?id=OIP.Vc-b3g_5oP-6TIjy3pKk4wHaE8&pid=Api&P=0&h=180" alt="Animal 2">
                <h3>Breed: rottweiler</h3>
                <p>Price: Rs.29000</p>
                <p>Description: Age:8months, Life Span: 12-14yrs, Nature: Friendly.</p>
                <a href="dog3.jsp" class="buy-button">Buy</a>
            </div>   
                
            <div class="animal-card">
                <img src="https://tse4.mm.bing.net/th?id=OIP.ac96t1H3UfvWpcWJbhRKrgHaE8&pid=Api&P=0&h=180" alt="Animal 2">
                <h3>Breed: Berichon du Cher</h3>
                <p>Price: Rs.2200</p>
                <p>Description: Origin:France, Meat Qty:Good, Wool Qty: Good, Health:Good, Milk:Average.</p>
                <a href="sheep4.jsp" class="buy-button">Buy</a>
            </div>    
                
             <div class="animal-card">
                <img src="https://i.pinimg.com/originals/b8/ed/02/b8ed02e3a68d024b3219f85111418f84.jpg" alt="Animal 2">
                <h3>Breed: Water Buffalo</h3>
                <p>Price: Rs.71500</p>
                <p>Description: Milk: 25L, Age:5yrs, Health: Good.</p>
                <a href="buf2.jsp" class="buy-button">Buy</a>
            </div>

            <!-- Repeat the above animal cards for other animals -->
            </section>
            <!-- Add your content for logged-in users -->
        </div>
        

<%
    } else {
        // User is not logged in, redirect to the login page
        response.sendRedirect("login.jsp");
    }
%>
browse
</body>
</html>