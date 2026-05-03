<%-- 
    Document   : index
    Created on : May 3, 2026, 11:37:59 AM
    Author     : subhodeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : index
    Created on : 8 Feb 2026
    Author     : Subhodeep
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Railway Admin Dashboard</title>
        <!-- Linking the same CSS for consistency -->
        <link rel="stylesheet" type="text/css" href="style.css">
        <style>
            .dashboard-container {
                text-align: center;
                background: white;
                padding: 40px;
                border-radius: 12px;
                box-shadow: 0 8px 16px rgba(0,0,0,0.2);
                border-top: 6px solid #00529b;
                margin-top: 100px;
            }
            .btn-group {
                display: flex;
                gap: 20px;
                justify-content: center;
                margin-top: 30px;
            }
            .nav-button {
                display: inline-block;
                padding: 15px 30px;
                font-size: 18px;
                font-weight: bold;
                text-transform: uppercase;
                transition: transform 0.2s, background-color 0.2s;
            }
            .nav-button:hover {
                transform: translateY(-3px);
                filter: brightness(1.1);
            }
            .manage-btn { background-color: #00529b; } /* Blue */
            .view-btn { background-color: #ef5350; }   /* Red */
        </style>
    </head>
    <body>
        <div class="dashboard-container">
            <h1>Indian Railways Portal</h1>
            <p>Welcome, Administrator. Please select an action:</p>
            
            <div class="btn-group">
                <!-- Redirects to your form page -->
                <button onclick="location.href='Adminlogin.jsp'" class="nav-button manage-btn">
                    Manage Traffic
                </button>
                
                <!-- Redirects to your data view servlet/page -->
                <button onclick="location.href='viewdata'" class="nav-button view-btn">
                    View Details
                </button>
            </div>
        </div>
    </body>
</html>