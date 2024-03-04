<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sell Book</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<c:if test="${empty userobj }">
<c:redirect url="login.jsp"/>
    
</c:if>
<%@include file="all_component/navbar.jsp" %>
<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                <h5 class="text-center text-primary p-1">Sell Old Book</h5>
                
                <c:if test="${not empty succMsg }">
                 <p class="text-center text-success">${succMsg }</p>
                <c:remove var="succMsg" scope="session"/>
                </c:if>
                            
                <c:if test="${not empty failedMsg }">
                <p class="text-center text-danger">${failedMsg }</p>
                 <c:remove var="failedMsg" scope="session"/>
                </c:if>
                            
                
  <form action="add_old_book" method="post" enctype="multipart/form-data">
    <input type="hidden" value="${userobj.email }" name="user"/>  
  <div class="form-group">
    <label for="exampleInputPassword1">Book Name*</label>
    <input type="text" class="form-control" required name="bname">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Author Name*</label>
    <input type="text" class="form-control" required name="author">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Price*</label>
    <input type="number" class="form-control" required name="price">
  </div>
  
  
  
  
  
  
  <div class="form-group">
    <label for="exampleInputPassword1">Upload Photo*</label>
    <input name="bimg" type="file" class="form-control-file">
  </div>
  
  <button type="submit" class="btn btn-primary">Sell</button>
                            </form>
                    
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>