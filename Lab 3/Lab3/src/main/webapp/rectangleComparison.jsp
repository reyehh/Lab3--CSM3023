<%-- 
    Document   : rectangleComparison
    Created on : 20 Apr 2024, 11:07:44 am
    Author     : rynaa
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Rectangle Area Comparison</title>
</head>
<body>
    <h1>Rectangle Area Comparison</h1>
    <form method="post" action="rectangleComparison.jsp">
        <label for="rect1Length">Rectangle 1 Length:</label>
        <input type="number" id="rect1Length" name="rect1Length" step="0.01" required>
        <label for="rect1Width">Rectangle 1 Width:</label>
        <input type="number" id="rect1Width" name="rect1Width" step="0.01" required>
        <br>
        <label for="rect2Length">Rectangle 2 Length:</label>
        <input type="number" id="rect2Length" name="rect2Length" step="0.01" required>
        <label for="rect2Width">Rectangle 2 Width:</label>
        <input type="number" id="rect2Width" name="rect2Width" step="0.01" required>
        <br>
        <input type="submit" value="Compare">
    </form>
    <%
        if (request.getMethod().equalsIgnoreCase("post")) {
            double rect1Length = Double.parseDouble(request.getParameter("rect1Length"));
            double rect1Width = Double.parseDouble(request.getParameter("rect1Width"));
            double rect2Length = Double.parseDouble(request.getParameter("rect2Length"));
            double rect2Width = Double.parseDouble(request.getParameter("rect2Width"));
            
            double area1 = rect1Length * rect1Width;
            double area2 = rect2Length * rect2Width;
            
            out.println("<p>Area of Rectangle 1: " + String.format("%.2f", area1) + " square units</p>");
            out.println("<p>Area of Rectangle 2: " + String.format("%.2f", area2) + " square units</p>");
            
            if (area1 > area2) {
                out.println("<p>Rectangle 1 has a greater area than Rectangle 2.</p>");
            } else if (area1 < area2) {
                out.println("<p>Rectangle 2 has a greater area than Rectangle 1.</p>");
            } else {
                out.println("<p>Both rectangles have the same area.</p>");
            }
        }
    %>
</body>
</html>

