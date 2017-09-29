<%-- 
    Document   : insertrecord
    Created on : 10.09.2017, 10:32:32
    Author     : Robesz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create new Employee</title>
    </head>
    <body>
        <form action="InsertData" method="POST">
            <table border="1">
               
                    <tr>
                        <td>First Name:</td>
                        <td><input type="text" name="firstname" id="firstname" /></td>
                    </tr>
                    <tr>
                        <td>Last Name:</td>
                        <td><input type="text" name="lastname" id="lastname" /></td>
                    </tr>
                    <tr>
                        <td>Positio:</td>
                        <td><input type="text" name="position" id="position" /></td>
                    </tr>
                    <tr>
                        <td>Salary:</td>
                        <td><input type="text" name="salary" id="salary" /></td>
                    </tr>
                <tr>
                       
                    <td><input type="reset" value="RESET" /></td>
                    <td><input type="submit" value="Insert" /></td>
                </tr>                   
                
            </table>

            
        </form>
    </body>
</html>
