<%-- 
    Document   : ArrayList
    Created on : 20 Apr 2024, 12:04:07 am
    Author     : rynaa
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Use Java ArrayList</title>
</head>
<body>
    <h1>Use JSP Page Directive</h1>
    <%
        // Create ArrayList object
        ArrayList<String> studentList = new ArrayList<String>();
        
        // Store student names
        studentList.add("Mohamad Azam");
        studentList.add("Peter Chong");
        studentList.add("Rahimah Mansor");
        studentList.add("Sri Devi");
        studentList.add("Ng Hue Ween");
        studentList.add("S. Nagarajan");
        
        // Display the number of records
        out.println("<p style=\"color: blue;\"> The number of records in ArrayList are " +
                    studentList.size() + "</p>");
        
        // Populate a list of students with blue font color
        for (int i = 0; i < studentList.size(); i++) {
            out.println("<p style=\"color: blue;\">Record " + (i + 1) + " is " + studentList.get(i) + "</p>");
        }
    %>
    <br/>
    <footer>&copy2016-Mohamad Nor</footer>
</body>
</html>
