<%-- 
    Document   : show_dvdcatalog
    Created on : Nov 22, 2020, 11:46:04 PM
    Author     : hatai
--%>

<%@page import="model.CartTable"%>
<%@page import="model.Cart"%>
<%@page import="java.util.Iterator"%>
<%@page import="model.DvdcatalogTable"%>
<%@page import="java.util.List"%>
<%@page import="model.Dvdcatalog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOW YOUR CART</title>
    </head>
     <jsp:useBean id="cart" class="model.Cart" scope="request"/>
      <%
                       
            List<Cart> empList = CartTable.findYourCart();
            Iterator<Cart> itr = empList.iterator();
            
     %>
    <body>
       <center>
        <h1>SHOPPING CART</h1>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Rate</th>
            <th>Year</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Remove</th>
          </tr>
          <%
              
               while(itr.hasNext()) {
                   cart = itr.next();
                   out.println("<tr>");
                   out.println("<td> "+ cart.getDvdname() + "</td>");
                   out.println("<td> "+ cart.getRate() + "</td>");
                   out.println("<td> "+ cart.getYee() + "</td>");
                   out.println("<td> "+ cart.getPrice() + "</td>");
                   out.println("<td> "+ cart.getQuantity() + "</td>");
                   out.println("<td><input type='submit' value='Remove'/></td>");
                   out.println("<tr>");
               }
          %>
    </table>
    <a href="index.html">Back to Menu</a>
 </center>
    </body>
</html>
