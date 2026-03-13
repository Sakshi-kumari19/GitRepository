<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <!-- <link rel="stylesheet" href="style.css"> -->
    <style>
       
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            height: 100vh;
            background: #f0f4f8;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        header, footer {
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        form label {
            font-weight: bold;
        }

        form input {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        form button {
            width: 100%;
            padding: 10px;
            background-color: #ffcc00;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        form button:hover {
            background-color: #00cc66;
            color: #fff;
        }

        footer {
            position: absolute;
            bottom: 10px;
            font-size: 14px;
            color: #888;
        }
    </style>
</head>
<body>

<header>
    <h1>Login Page</h1>
</header>

<main>
    <form action="loginHandler.jsp" method="post">
        <label for="username">Enter your name:</label><br>
        <input type="text" name="username" id="username" required><br><br>

        <label for="password">Enter your password:</label><br>
        <input type="password" name="password" id="password" required><br><br>

        <button type="submit">Login</button>
    </form>
</main>

<footer>
    <p>&copy; 2025 Healthify Me Site</p>
</footer>

</body>
</html>
