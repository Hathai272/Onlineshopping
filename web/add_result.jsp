<%-- 
    Document   : add_result
    Created on : Nov 23, 2020, 7:54:17 PM
    Author     : hatai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add result</title>
    </head>
    <body>
        <h1><%=request.getAttribute("rowInserted") + " row is added " %> </h1>
        </br>
        <jsp:include page="show_cart.jsp" flush="true" />
    </body>
</html>
