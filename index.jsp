<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<title>HIT DevOps Project</title>
<style>
body { font-family: Arial, sans-serif; max-width: 600px;
margin: 40px auto; padding: 20px; }
h1 { color: #2c3e50; }
#greeting { color: #27ae60; }
.container { background: #f5f5f5; padding: 20px; border-radius: 8px; }
input[type=text] { padding: 8px; font-size: 14px; width: 200px; }
button { padding: 8px 16px; background: #3498db; color: white;
border: none; cursor: pointer; border-radius: 4px; }
</style>
</head>
<body>
<h1 id="pageTitle">HIT DevOps Final Project</h1>
<h2>hallamadi</h2>
<p>Team: <strong>DevopsTeam5</strong></p>
<div class="container">
<form method="GET" action="index.jsp">
<label for="nameInput">Enter your name:</label><br><br>
<input type="text" id="nameInput" name="name" placeholder="e.g. Tomer" />
<button type="submit" id="submitBtn">Greet</button>
</form>
<% if (name != null && !name.trim().isEmpty()) { %>
<h2 id="greeting">Hello, <%= name %>!</h2>
<% } %>
</div>
<p><a id="hitLink" href="https://www.hit.ac.il" target="_blank">Visit HIT
website</a></p>
</body>
</html>