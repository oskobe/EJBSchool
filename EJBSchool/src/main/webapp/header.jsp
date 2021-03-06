<%@ page import = "com.jac.web.model.Student" %>
<%@ page import = "com.jac.web.model.Teacher" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<title>EJBs School</title>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp">EJBs School</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="welcome.jsp">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Library">Library</a>
      </li>
      <%String username = (String)session.getAttribute("username");
      if(username != null && username.equals("teacher")){%>
      <li class="nav-item">
        <a class="nav-link" href="Student">Student</a>
      </li>
      <%} %>
    </ul>

    <%! Student student = null;
    	Teacher teacher = null;%>
    <% if(session.getAttribute("user") != null){
    
	    if(session.getAttribute("user") instanceof Teacher){
	   		teacher = (Teacher) session.getAttribute("user");
	   		out.print("<span style='color:white'>&nbsp; Logged in as: " + teacher.getUserName() + "&nbsp;</span>");
    	}else if(session.getAttribute("user") instanceof Student){
	   		student = (Student)session.getAttribute("user");
	   		out.print("<span style='color:white'>&nbsp; Logged in as: " + student.getUserName() + "&nbsp;</span>");
    	}
  	%>
  	<form action="LoginController"class="form-inline my-2 my-lg-0" method="post">
  		<input type="hidden" name="command" value="logout"/>
  		<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Log out</button>
  	</form>
  	<%} %>
  </div>
</nav>

<div class="container">
