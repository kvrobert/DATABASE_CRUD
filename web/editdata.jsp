<%-- 
    Document   : editdata
    Created on : 10.09.2017, 14:35:32
    Author     : Robesz
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Employee</title>
    </head>
    <body>
        <h1 align="center">Editing Employee</h1><br>
        <form action="UpdateData" method="post">
            <table border="1" align="center" width="80%">
                <thead>
                    <tr>
                        <th>ID:</th>
                        <th>First Name:</th>
                        <th>Last Name:</th>
                        <th>Position:</th>
                        <th>Salary:</th>
                    </tr>
                </thead>
                <tbody>
                    <% ResultSet res = (ResultSet) request.getAttribute("editData");
                        if (res.next()) {
                    %>
                    <tr>
                        <td><input type="text" name="id" value="<%=Integer.toString(res.getInt("ID"))%>"/></td>
                        <td><input type="text" name="firstname" value="<%=res.getString("firstname")%>"/></td>
                        <td><input type="text" name="lastname" value="<%=res.getString("lastname")%>"/></td>
                        <td><input type="text" name="positio" value="<%=res.getString("positio")%>"/></td>
                        <td><input type="text" name="salary" value="<%=Integer.toString(res.getInt("salary"))%>"/></td>                  
                    </tr>
                    <tr>
                        <td align="center" colspan="5" ><input type="submit" value="Update" name="update" /></td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
        </form>        
    </body>
</html>
