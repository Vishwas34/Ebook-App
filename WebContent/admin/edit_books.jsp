<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
    <%@ page import="com.DAO.BookDAOImpl" %>
     <%@ page import="com.DB.DBConnect" %>
      <%@ page import="com.entity.BookDtls" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin: Add Books</title>
<%@include file="allCss.jsp" %>
</head>
<body style="background-color:#f0f2f2;">
      <%@include file="navbar.jsp" %>
      <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center">Edit Books</h4>
                          
                            
                            <%
                             int id=Integer.parseInt(request.getParameter("id"));
                            BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
                            BookDtls b=dao.getBookById(id);
                            %>
                            
                            <form action="../editbooks" method="post">
                            <input  type="hidden" name="id" value="<%=b.getBookId()%>"/>
  <div class="form-group">
    <label for="exampleInputPassword1">Book Name*</label>
    <input type="text" class="form-control" required name="bname" value="<%=b.getBookName()%>">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Author Name*</label>
    <input type="text" class="form-control" required name="author" value="<%=b.getAuthor() %>">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Price*</label>
    <input type="number" class="form-control" required name="price" value="<%=b.getPrice() %>">
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputPassword1">Book Status*</label>
    <select id="inputstate" name="status" class="form-control">
            <%if("Active".equals(b.getStatus())){
            	%>
            	<option value="Active">Active</option>
            	<option value="Inactive">InActive</option>
            <%}    else
            {%>
            <option value="Inactive">InActive</option>
            	<option value="Active">Active</option>
            	
            <%}
            %>
           
           
    </select>
  </div>
  

  <button type="submit" class="btn btn-primary">Update</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
      </div>
      <div style="margin-top:5px;">
           <%@include file="footer.jsp" %>
          </div>
</body>
</html>