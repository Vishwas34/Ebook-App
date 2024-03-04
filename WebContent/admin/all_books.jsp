<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.DAO.BookDAOImpl" %>
    <%@ page import="com.DB.DBConnect" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.entity.BookDtls" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin: All Books</title>
<%@include file="allCss.jsp" %>
</head>
<body>
             <c:if test="${empty userobj }">
                  <c:redirect url="../login.jsp"/>
             </c:if>   
<%@include file="navbar.jsp" %>
<h3 class="text-center">Hello Admin</h3>

                            <c:if test="${not empty succMsg }">
                                  <p class="text-center text-success">${succMsg }</p>
                                  <c:remove var="succMsg" scope="session"/>
                            </c:if>
                            
                            <c:if test="${not empty failedMsg }">
                                  <p class="text-center text-danger">${failedMsg }</p>
                                  <c:remove var="failedMsg" scope="session"/>
                            </c:if>

    <table class="table table-striped">
  <thead class="bg-dark text-white">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Image</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Categories</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
     
      
  <tbody> 
  
    <%
       BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
      List<BookDtls> list=dao.getAllBooks();
      for(BookDtls b:list)
      {%>
       <tr>
      <td><%=b.getBookId() %></td>
      <td><img src="../img/<%=b.getPhotoName()%>" style="width:50px; height:50px;"/></td>
      <td><%=b.getBookName() %></td>
      <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %></td>
      <td><%=b.getBookCategory() %></td>
      <td><%=b.getStatus() %></td>
      <td>
      <a href="edit_books.jsp?id=<%=b.getBookId() %>" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i>Edit</a>
      <a href="../delete?id=<%=b.getBookId() %>" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i>Delete</a>
      </td>
    </tr>	  
      <%}
      %>
  
  </tbody>
</table>
    <div style="margin-top:295px;">
           <%@include file="footer.jsp" %>
          </div>
</body>
</html>