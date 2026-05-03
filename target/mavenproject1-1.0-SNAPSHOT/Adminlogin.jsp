<%-- 
    Document   : Adminlogin
    Created on : May 3, 2026, 11:44:21 AM
    Author     : subhodeep
--%>

<%
    //prevent the backward caching after logout
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    //check if user is logged in
    if(session.getAttribute("user") != null && session.getAttribute("user") != null){
    response.sendRedirect("add_traffic.jsp");
    return; //stop rendering the rest of the page
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Railway Admin Login</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/index.css">
        <style>
            /* Specific styles for the login box */
            .login-container {
                width: 350px;
                margin: 100px auto;
                background: white;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0px 10px 25px rgba(0,0,0,0.2);
                border-top: 8px solid #00529b;
                text-align: center;
            }
            .login-container h2 {
                color: #00529b;
                margin-bottom: 20px;
            }
            .error-msg {
                color: #ef5350;
                font-size: 14px;
                margin-bottom: 10px;
            }
        </style>
    </head>
    <body>
        <div class="login-container">
            <h2>Admin Login</h2>
            
            <%-- Error message display if login fails --%>
            <c:if test="${not empty error}">
                <p class="error-msg">${error}</p>
            </c:if>

            <form action="LoginServlet" method="post">
                <label style="text-align: left; display: block;">Username:</label>
                <input type="text" name="username" placeholder="Enter Admin ID" required>
                
                <label style="text-align: left; display: block;">Password:</label>
                <input type="password" name="password" placeholder="••••••••" required>
                
                <input type="submit" value="Login to Traffic Control" style="margin-top: 10px;">
            </form>
            <br>
            <a href="index.jsp" style="text-decoration: none; color: #666; font-size: 13px;">← Back to Home</a>
        </div>
    </body>
</html>
