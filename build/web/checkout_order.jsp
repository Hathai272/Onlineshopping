<%-- 
    Document   : checkout_order
    Created on : Nov 23, 2020, 10:30:18 PM
    Author     : hatai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Order</title>
    </head>
    <body>
        <h1>Your Order is Confirmed!!!</h1>
        <h1><%=" The Total Amount is "+ request.getAttribute("cost") %></h1>
        <a href="index.html">Back to Menu</a>
    </body>
</html>
