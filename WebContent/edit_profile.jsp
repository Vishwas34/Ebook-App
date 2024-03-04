<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Profile</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color:#f7f7f7;">
<%@include file="all_component/navbar.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                <h4 class="text-center text-primary">Edit Profile</h4>
                    
                    <c:if test="${not empty failedMsg }">
                   <p class="text-center text-danger">${failedMsg }</p>
                   <c:remove var="failedMsg" scope="session"/>
             </c:if>
             
              <c:if test="${not empty succMsg }">
                   <p class="text-center text-success">${succMsg }</p>
                   <c:remove var="succMsg" scope="session"/>
             </c:if>
                    
                    <form action="update_profile" method="post">
            <input type="hidden" value="${userobj.id }" name="id"/>
      <div class="form-group">
    <label for="exampleInputEmail1">Enter Full Name*</label>
    <input type="text" class="form-control"  aria-describedby="emailHelp" required="required" name="fname" value="${userobj.name }">
    
  </div>      
            
  <div class="form-group">
    <label for="exampleInputEmail1">Email address*</label>
    <input type="email" class="form-control"  aria-describedby="emailHelp" required name="email" value="${userobj.email }">
    
  </div>
  
   <div class="form-group">
    <label for="exampleInputEmail1">Phone Number*</label>
    <input type="number" class="form-control"  aria-describedby="emailHelp" required name="phno" value="${userobj.phno }">
    
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password*</label>
    <input type="password" class="form-control" required name="password">
  </div>
  
  <button type="submit" class="btn btn-primary">Update</button>
</form>  
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>