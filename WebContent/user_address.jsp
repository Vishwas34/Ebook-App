<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Address</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body style="background-color:#f7f7f7;">
<%@include file="all_component/navbar.jsp" %>
    
    <div class="container">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card">
                    <div class="card-body">
                    <h3 class="text-center text-success">Add Address</h3>
                    
       <form>
       
       <div class="form-row">
       <div class="form-group col-md-6">
       <label for="inputEmail4">Phone Number</label>
       <input type="number" class="form-control" id="inputEmail4" >
       </div>
       <div class="form-group col-md-6">
       <label for="inputEmail4">LandMark</label>
       <input type="text" class="form-control" id="inputEmail4" >
       </div>
       </div>
       
       <div class="form-row">
       <div class="form-group col-md-4">
       <label for="inputEmail4">City</label>
       <input type="text" class="form-control" id="inputEmail4" >
       </div>
       <div class="form-group col-md-4">
       <label for="inputPassword4">State</label>
       <input type="text" class="form-control" id="inputPassword4" >
       </div>
       <div class="form-group col-md-4">
       <label for="inputEmail4">PinCode</label>
       <input type="text" class="form-control" id="inputEmail4" >
       </div>
       </div>
       
       <div class="text-center"> 
            <button class="btn btn-warning text-white">Add Address</button>
       </div>
       </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>