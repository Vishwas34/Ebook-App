<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
    <%@ page import="com.entity.User" %>
    <%@ page import="com.DAO.BookOrderImpl" %>
    <%@ page import="com.DB.DBConnect" %>
    <%@ page import="com.entity.Book_Order" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin: All Orders</title>
<%@include file="allCss.jsp" %>
</head>
<body>
      
      <c:if test="${empty userobj }">
         <c:redirect url="../login.jsp"/>
      </c:if>

<%@include file="navbar.jsp" %>
<h3 class="text-center">Hello Admin</h3>

    <table class="table table-striped">
  <thead class="bg-dark text-white">
    <tr>
      <th scope="col">Order Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Payment Type</th>
    </tr>
  </thead>
  <tbody> 
       
       <%
         BookOrderImpl dao=new BookOrderImpl(DBConnect.getConn());
         List<Book_Order> blist=dao.getAllOrder();
         for(Book_Order b:blist)
         {%>
       <tr>
      <th scope="row"><%=b.getOrderId() %></th>
      <td><%=b.getUserName() %></td>
      <td><%=b.getEmail() %></td>
      <td><%=b.getFulladd() %></td>
      <td><%=b.getPhno() %></td>
      <td><%=b.getBookName() %></td>
      <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %></td> 
      <td><%=b.getPaymentType() %></td>
      </tr>	 
         <%}
       %>
  </tbody>
</table>
     <div style="margin-top:305px;">
           <%@include file="footer.jsp" %>
          </div> 
</body>
</html>