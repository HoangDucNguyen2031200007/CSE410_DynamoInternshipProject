<%-- 
    Document   : index
    Created on : Sep 24, 2023, 12:16:46 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>index</title>
    </head>
    <body>
        <h1>Index</h1>
        <% request.getRequestDispatcher("ManageMachineServlet?mode=machineGeneral").forward(request, response);             %>
    </body>
</html>
