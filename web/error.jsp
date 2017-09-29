<%-- 
    Document   : error
    Created on : 10.09.2017, 11:36:06
    Author     : Robesz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ERORR</title>
    </head>
    <body>
        <h3><%=(String)request.getAttribute("Error")%></h3>
    </body>
</html>
