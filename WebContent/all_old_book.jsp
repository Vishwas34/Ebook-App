<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.DAO.BookDAOImpl" %>
    <%@ page import="com.DB.DBConnect" %>
    <%@ page import="java.util.List" %>
    <%@ page import="com.entity.BookDtls" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Recent Books</title>
<%@include file="all_component/allCss.jsp" %>
<style type="text/css">
           
           .crd-ho:hover
           {
           background-color:#fcf7f7;
           }
           
     </style> 
</head>
<body>
<%@include file="all_component/navbar.jsp" %>

   <div class="container-fluid">
        <div class="row">
               <%
              BookDAOImpl dao3=new BookDAOImpl(DBConnect.getConn());
              List<BookDtls> list3=dao3.getAllOldBook();
              for(BookDtls b:list3)
              {%>
            	 <div class="col-md-3">
                 <div class="card crd-ho">
                     <div class="card-body text-center">
                     <img alt="" src="img/<%=b.getPhotoName() %>" style="width:150px; height:200px;" class="img-thumblin">
                     <p><%=b.getBookName() %></p>
                     <p><%=b.getAuthor() %></p>
                     <p><%=b.getBookCategory() %></p>
                     <div class="row text-center">
                      
                      <a href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-success btn-sm ml-5">View Details</a>
                      <a href="" class="btn btn-danger btn-sm ml-1"><i class="fas fa-rupee-sign"></i><%=b.getPrice() %></a>
                     </div>
   
                 </div>
                 </div>
             </div>
                   
              <%}
            %>  
            
            </div>
        </div>
  
</body>
</html>