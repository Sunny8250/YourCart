<%@page import="com.learn.yourcart.entities.User"%>
<%

    User user = (User) session.getAttribute("current-user");
    if (user == null) {
        session.setAttribute("message", "You are not logged in!! Login first.");
        response.sendRedirect("login.jsp");
        return;
    } else {
        if (user.getUserType().equals("normal")) {
            session.setAttribute("message", "You are not an Admin!! You cannot access this page.");
            response.sendRedirect("login.jsp");
            return;
        }
    }

%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel-products Page</title>

        <%@include file="components/common_css_js.jsp" %>
        <style>
            
            body{
                background: #E6E6FA;
            }
            
        </style>
        
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>

        <h1>Hello World!</h1>
        
        <%@include file="components/common_modals.jsp" %>

    </body>
</html>
