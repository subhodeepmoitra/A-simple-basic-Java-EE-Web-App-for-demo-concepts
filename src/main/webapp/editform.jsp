<%-- 
    Document   : editform
    Created on : 16 Apr 2026, 7:39:40 pm
    Author     : Subhodeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="UpdateFinalServlet" method="post">
            ID: <input type="text" name="id" value="${record.ID}" readonly>

            Name: <input type="text" name="name" value="${record.NAME}"><br>
            Source: <input type="text" name="source" value="${record.SOURCE}"><br>
            Destination: <input type="text" name="destination" value="${record.DDESTINATION}"><br>

            <input type="submit" value="Save Changes">
        </form>
    </body>
</html>
