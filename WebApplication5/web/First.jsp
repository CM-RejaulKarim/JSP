<%-- 
    Document   : First
    Created on : Jun 4, 2025, 6:25:38 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!<br>
            <%
            LocalDate myObj = LocalDate.now();
            out.println(myObj);
            
            %>
        </h1>
    </body>
</html>
