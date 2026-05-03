<%-- 
    Document   : index
    Created on : 8 Feb 2026, 10:51:09 am
    Author     : Subhodeep
--%>
<%
    //prevent the backward caching after logout
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    //check if user is logged in
    if(session.getAttribute("user") == null){
    response.sendRedirect("Adminlogin.jsp");
    return; //stop rendering the rest of the page
    }
%>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/index.css">
        <title>Home</title>
    </head>
    <body>
        <h3>Welcome, ${user}</h3>
        <a href="LogoutServlet">Logout</a>
        <div class="container">
            <button><a href="viewdata">View Data</a></button>
            <form action="myServlet" method="post">
                <label>ID: </label>
                <input type="number" id="id" name="id"><br>
                <label>Train name: </label>
                <input type="text" id="name" name="name"><br>
                <label>Source: </label>
                <input type="text" id="source" name="source"><br>
                <label>Destination: </label>
                <input type="text" id="destination" name="destination"><br>
                <input type="submit" value="Submit">
            </form>
        </div>
    </body>
</html>
