<%-- 
    Document   : index
    Created on : 10 déc. 2020, 15:03:15
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello BRIKSI</h1>
        <form>
            Num1: <input type="text" name="i"><br>
            Num2: <input type="text" name="j"><br>
            <input type="submit" value="Addition">
        </form>
        <%
            try { // Call Web Service Operation
                webservice.CalculatriceWS_Service service = new webservice.CalculatriceWS_Service();
                webservice.CalculatriceWS port = service.getCalculatriceWSPort();
                // TODO initialize WS operation arguments here
                String i = request.getParameter("i");
                String j = request.getParameter("j");
                int a = Integer.parseInt(i);
                int b = Integer.parseInt(j);
                // TODO process result here
                int result = port.add(a, b);
                System.out.println(result);
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
        %>
        
    </body>
</html>
