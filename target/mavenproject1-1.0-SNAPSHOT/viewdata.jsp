<%-- 
    Document   : viewdata.jsp
    Created on : 5 Mar 2026, 7:47:51 pm
    Author     : Subhodeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/viewdata.css">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="2">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Source</th>
                <th>Destination</th>
                <th>Duty Date</th>
            </tr>
            <c:forEach var="row" items="${dataList}">
                <tr>
                    <td>${row.id}</td>
                    <td>${row.name}</td>
                    <td>${row.source}</td>
                    <td>${row.ddestination}</td>
                    <td>${row.duty_date}</td>
                    <td>
                        <a href="DeleteServlet?id=${row.id}" 
                           onclick="return confirm('Are you sure?')">Delete</a>
                    </td>
                    <td>
                        <a href="EditFetchServlet?id=${row.id}">Edit</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <a href="index.jsp">Back</a>
    </body>
</html>
