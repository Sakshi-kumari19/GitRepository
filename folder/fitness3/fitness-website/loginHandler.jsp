<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    
    if (username != null && !username.trim().isEmpty()) {
        
        session.setAttribute("username", username);
        response.sendRedirect("index.jsp");
    } else {
%>
        <p>Login failed. <a href="login.jsp">Try again</a></p>
<%
    }
%>
