<%-- 
    Document   : Calculator
    Created on : 17 Apr 2024, 3:38:28 pm
    Author     : rynaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="#a00FFF" text="gold">
        
    <center>
        <h2>Basic calculator program in JSP</h2>
        <%
            // Declare variables and set default values
            String num1 = "0";
            String num2 = "0";
            int result = 0;
            
            // Check if form is submitted
            if (request.getParameter("op") != null) {
                // Retrieve form data
                String op = request.getParameter("op");
                num1 = request.getParameter("operand1");
                num2 = request.getParameter("operand2");
                
                // Perform calculations based on the operator
                switch (op) {
                    case "0":
                        result = Integer.parseInt(num1) + Integer.parseInt(num2);
                        break;
                    case "1":
                        result = Integer.parseInt(num1) - Integer.parseInt(num2);
                        break;
                    case "2":
                        result = Integer.parseInt(num1) * Integer.parseInt(num2);
                        break;
                    case "3":
                        // Check for division by zero
                        int divisor = Integer.parseInt(num2);
                        if (divisor != 0) {
                            result = Integer.parseInt(num1) / divisor;
                        } else {
                            out.println("Error: Division by zero!");
                        }
                        break;
                    case "4":
                        result = Integer.parseInt(num1) % Integer.parseInt(num2);
                        break;
                    default:
                        out.println("Error: Invalid operator!");
                        break;
                }
            }
        %>
        
        <form method="get" name="f1">
            <input type="text" size="20" name="operand1" value="<%= num1 %>" />
            
            <select name="op" size="1">
                <option value="0">+</option>
                <option value="1">-</option>
                <option value="2">*</option>
                <option value="3">/</option>
                <option value="4">%</option>
            </select>
            
            <input type="text" size="20" name="operand2" value="<%= num2 %>" />
            <br><br>
            <input type="submit" value="Calculate" />
        </form>    
        
        <%-- Display result if calculated --%>
        <% if (request.getParameter("op") != null) { %>
            Result = <%= result %>
        <% } %>
    </center>
    </body>
</html>
