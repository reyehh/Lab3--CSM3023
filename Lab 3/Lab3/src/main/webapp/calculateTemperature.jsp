<%-- 
    Document   : calculateTemperature
    Created on : 20 Apr 2024, 10:09:15 am
    Author     : rynaa
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Temperature Converter</title>
</head>
<body>
    <h1>Temperature Converter</h1>
    <form method="post" action="calculateTemperature.jsp">
        <label for="temperature">Enter temperature:</label>
        <input type="number" id="temperature" name="temperature" required>
        <select name="unit" required>
            <option value="Celsius">Celsius</option>
            <option value="Fahrenheit">Fahrenheit</option>
        </select>
        <input type="submit" value="Convert">
    </form>
    <%
        // Check if the form was submitted
        if (request.getMethod().equalsIgnoreCase("post")) {
            double temperature = Double.parseDouble(request.getParameter("temperature"));
            String unit = request.getParameter("unit");
            double convertedTemperature;

            if (unit.equalsIgnoreCase("Celsius")) {
                convertedTemperature = (9.0 / 5.0) * temperature + 32;
                out.println("<p>" + temperature + " Celsius is " + convertedTemperature + " Fahrenheit</p>");
            } else if (unit.equalsIgnoreCase("Fahrenheit")) {
                convertedTemperature = (temperature - 32) * 5.0 / 9.0;
                out.println("<p>" + temperature + " Fahrenheit is " + convertedTemperature + " Celsius</p>");
            }
        }
    %>
</body>
</html>

