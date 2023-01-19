<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mohar</title>

</head>
<body>
<jsp:include page="header.html"/>
<center style="margin-top: 300px" >
<form id="myForm" action="add" method="post">
<h2>registration form</h2>
 <input type="text" name="name" placeholder="name"/>
 <br/>
 <input type="email" name="email" placeholder="email"/>
 <br/>
 <input type="text" name="passwd" placeholder="passworde"/>
 <br/>
 <button type="submit">enter</button>


</form>
<div id="message" style="display: none;"></div>
</center>
<jsp:include page="footer.html"/>
</body>
</html>