<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<link rel="icon" href="https://png.pngtree.com/png-clipart/20190515/original/pngtree-abstract-indian-flag-theme-background-design-flag-of-india-png-image_3541508.jpg" type="image/png">
    
<style>
    body {
        background-color: #f0f0f0; /* You can customize the background color */
        font-family: Arial, sans-serif;
        text-align: center;
        padding: 20px;
    }
    h1 {
        color: #333;
    }
</style>

</head>
<body>
<%
    // Retrieve the username from the session
    String username = (String) session.getAttribute("username");
%>
<h1>Login Success! Welcome</h1>
<script>
    // Redirect to the main page after 3 seconds
    setTimeout(function() {
        window.location.href = 'main.jsp';
    }, 3000);
</script>
</body>
</html>
