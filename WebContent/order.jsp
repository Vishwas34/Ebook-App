<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.entity.User" %>
    <%@ page import="com.DAO.BookOrderImpl" %>
    <%@ page import="com.DB.DBConnect" %>
    <%@ page import="com.entity.Book_Order" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Orders</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body  style="background-color:#f7f7f7;">
<%@include file="all_component/navbar.jsp" %>
<div class="container p-1">
  <h3  class="text-center text-primary">Your Orders</h3>
    <table class="table table-striped mt-3">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Order Id</th>
      <th scope="col">Name</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Payment Type</th>
    </tr>
  </thead>
  <tbody>
   <c:if test="${empty userobj }">
         <c:redirect url="login.jsp"></c:redirect>         
      </c:if>
  
  <%
   User u=(User) session.getAttribute("userobj");
   BookOrderImpl dao=new BookOrderImpl(DBConnect.getConn());
   List<Book_Order> blist=dao.getBook(u.getEmail());
   for(Book_Order b:blist)
   {%>
      <tr>
      <th scope="row"><%=b.getOrderId() %></th>
      <td><%=b.getUserName() %></td>
      <td><%=b.getBookName() %></td>
      <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %></td>
      <td><%=b.getPaymentType() %></td>
    </tr>	   
	   
   <%}
  %>
    
  </tbody>
</table>
</div>
</body>
</html>