<%-- 
    Document   : addUser
    Created on : May 10, 2026, 7:43:39 PM
    Author     : subhodeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adding User (Demonstration of MVC Architecture)</title>
    </head>
    <body>
        <form action="addUserMVC" method="post">
            <label>Username: </label>
            <input type="text" id="username" name="username"><br>
            <label>Password: </label>
            <input type="text" id="password" name="password"><br>
            <input type="submit" value="Add User">
        </form>
    </body>
</html>
