<%-- 
    Document   : displayrecords
    Created on : 10.09.2017, 10:32:54
    Author     : Robesz
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Disply Employees</title>
    </head>
    <body>
        
        <script language="javaScript" >
            function editRecord(id)
            {
                url = "EditRecord";
                window.location.href = "http://localhost:17128/AmarnathR_DATABASE_CRUD/" + url + "?id=" + id;
            
            }
            
            function delRecord(id) 
            {
                url = "DeleteRecord";
                window.location.href = "http://localhost:17128/AmarnathR_DATABASE_CRUD/" + url + "?id=" + id;    
            }
                
        </script>
        
        <h2 align="center" >The list of the Employees</h2><br>
        <table border="1" align="center" width="70%" >
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
                <% 
                    List data = (List) request.getAttribute("dolgozokData");
                    Iterator itr = data.iterator();
                    while (itr.hasNext() ) {
                    String id = (String) itr.next();
                %> 
                <tr>
                    <td><%= id %></td>
                    <td><%= itr.next()%></td>
                    <td><%= itr.next()%></td>
                    <td><%= itr.next()%></td>
                    <td><%= itr.next()%></td>
                    <td align="center"><input id="edit" type="submit" value="Edit" name="edit" onclick="editRecord(<%= id %>)" /></td>
                    <td align="center"><input id="delete" type="submit" value="Delete" name="delete" onclick="delRecord(<%= id %>)" /></td>
                </tr>
              <% }%> 
            </tbody>
            
        </table>

        
    </body>
</html>
