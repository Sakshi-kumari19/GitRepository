<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CSE Students Marks</title>
    <style>
        table {
            margin: auto;
            border-collapse: collapse;
            width: 60%;
            font-family: Arial, sans-serif;
        }
        th, td {
            padding: 12px;
            border: 1px solid #444;
            text-align: center;
        }
        th {
            background-color: #e2e2e2;
        }
        h2 {
            text-align: center;
            font-family: Arial, sans-serif;
        }
    </style>
</head>
<body>

<h2>CSE Students - Marks List</h2>

<%
    String url = "jdbc:mysql://localhost:3306/student";
    String user = "root";
    String password = "yourpassword";  // 🔁 Change this to your real MySQL password

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
        stmt = conn.createStatement();
        String query = "SELECT name, marks FROM cse";
        rs = stmt.executeQuery(query);
%>

<table>
    <tr>
        <th>Name</th>
        <th>Marks</th>
    </tr>
    <%
        while (rs.next()) {
            String name = rs.getString("name");
            int marks = rs.getInt("marks");
    %>
    <tr>
        <td><%= name %></td>
        <td><%= marks %></td>
    </tr>
    <% } %>
</table>

<%
    } catch (Exception e) {
        out.println("<p style='color:red; text-align:center;'>Error: " + e.getMessage() + "</p>");
    } finally {
        try { if (rs != null) rs.close(); } catch (Exception e) {}
        try { if (stmt != null) stmt.close(); } catch (Exception e) {}
        try { if (conn != null) conn.close(); } catch (Exception e) {}
    }
%>

</body>
</html>