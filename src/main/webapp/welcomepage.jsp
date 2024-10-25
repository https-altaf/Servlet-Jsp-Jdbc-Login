<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <style type="text/css">
 html {
  background-color: #10151B;
  background: url(https://static.pexels.com/photos/3797/black-and-white-sport-fight-boxer.jpg) no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

body {
  font-family: "Oswald", sans-serif;
  -webkit-font-smoothing: antialiased;
  font-smoothing: antialiased;
}

h1 {
  line-height: .95;
  color: #66fcf1;
  font-weight: 900;
  font-size: 150px;
  text-transform: uppercase;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  pointer-events: none;
}

.center {
  position: absolute;
  margin: auto;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  width: 581px;
  height: 50%;
}

 
 
 
 
 
 </style>
</head>
<body>

<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setDateHeader("Expires", 0); // Proxies
    
    %> 

<%
String username=(String)session.getAttribute("username");

  if(username==null)
  {
	  response.sendRedirect("login.jsp");
  }
 
%>
   <!-- Inspired by https://bert.house/en/-->
<div class="center">
  <h1>WELCOME</h1>
  
   
</div>

 <a  href="video.jsp">go check video</a>
</body>
</html>