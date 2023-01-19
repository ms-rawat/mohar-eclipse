<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Fetch Data from MySQL</title>
    <style>
    table {
    width: 100%;
    border-collapse: collapse;
}

th, td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
}

th {
    background-color: #f2f2f2;
}
    
    </style>
</head>
<body>
<jsp:include page="header.html"/>
    <%
        Connection con = null;
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/details","root","");
            Statement myCondition=con.createStatement();
            ResultSet rs=myCondition.executeQuery("SELECT id,name, email FROM register");
    %>
    <table>
        <tr>
            <th>s.no</th>
            <th>Name</th>
            <th>Email</th>
        </tr>
        <%
            while(rs.next()){
        %>
        <tr> <td><%= rs.getString("id") %></td>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("email") %></td>
        </tr>
        <%
            }
        %>
    </table>
    <%
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
    <jsp:include page="footer.html"/>
</body>
</html>
