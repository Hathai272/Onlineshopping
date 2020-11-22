<%-- 
    Document   : show_dvdcatalog
    Created on : Nov 22, 2020, 11:46:04 PM
    Author     : hatai
--%>

<%@page import="java.util.Iterator"%>
<%@page import="model.DvdcatalogTable"%>
<%@page import="java.util.List"%>
<%@page import="model.Dvdcatalog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOW DVD CATALOG</title>
    </head>
     <jsp:useBean id="dvd" class="model.Dvdcatalog" scope="request"/>
      <%
                       
            List<Dvdcatalog> empList = DvdcatalogTable.findAllDvdcatalog();
            Iterator<Dvdcatalog> itr = empList.iterator();
            
     %>
    <body>
       <center>
        <h1>DVD CATALOG</h1>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Rate</th>
            <th>Year</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Add Cart</th>
          </tr>
          <%
              
               while(itr.hasNext()) {
                   dvd = itr.next();
                   out.println("<tr>");
                   out.println("<td> "+ dvd.getDvdname() + "</td>");
                   out.println("<td> "+ dvd.getRate() + "</td>");
                   out.println("<td> "+ dvd.getYe() + "</td>");
                   out.println("<td> "+ dvd.getPrice() + "</td>");
                   out.println("<td><input type='text' size=10/></td>");
                   out.println("<td><input type='submit' value='AddToCart'/></td>");
                   out.println("<tr>");
               }
          %> 
    </table>
    <a href="index.html">Back to Menu</a>
 </center>
    </body>
</html>
