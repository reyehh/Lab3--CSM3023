<%-- 
    Document   : mainPage
    Created on : 20 Apr 2024, 9:49:17 am
    Author     : rynaa
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%@ include file="headerPage.jsp" %>
    <h1>Using JSP Include directive</h1>
    <p style="color: red;">Java Server Page (JSP) is a technology for controlling the content 
        or appearance of web pages through the use of servlets, small
        programs that are specified in the web page and run on the web server
        to modify the web page before it is sent to the user who requested it.</p>
    <%@ include file="footerPage.jsp" %>
</body>
</html>
