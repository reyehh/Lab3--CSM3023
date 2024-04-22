<%-- 
    Document   : processCalculateCarLoan
    Created on : 19 Apr 2024, 3:12:54 pm
    Author     : rynaa
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Car Loan Calculation Result</title>
</head>
<body>
    <h2>Car Loan Calculation Result</h2>

    <%-- Get parameters from the form --%>
    <% 
        String loanAmountStr = request.getParameter("loanAmount");
        String loanPeriodStr = request.getParameter("Period"); // Corrected variable name

        // Validate inputs
        if (loanAmountStr != null && loanPeriodStr != null && !loanAmountStr.isEmpty() && !loanPeriodStr.isEmpty()) {
            try {
                double loanAmount = Double.parseDouble(loanAmountStr);
                int loanPeriod = Integer.parseInt(loanPeriodStr);

                if (loanAmount <= 0 || loanPeriod <= 0) {
    %>
                    <p>Error: Loan amount and period must be positive numbers.</p>
    <%
                } else {
                    // Calculate monthly payment
                    double interestRate = 0.05; // 5% interest rate (adjust as needed)
                    double monthlyInterestRate = interestRate / 12;
                    int numberOfPayments = loanPeriod * 12;
                    double monthlyPayment = (loanAmount * monthlyInterestRate) / (1 - Math.pow(1 + monthlyInterestRate, -numberOfPayments));

                    // Calculate total payment (loan + interest)
                    double totalPayment = monthlyPayment * numberOfPayments;

                    // Display result
    %>
                    <p>Loan Request: <%= loanAmount %> </p>
                    <p>Period of Payment: <%= loanPeriod %> </p>
                    <p>Total Loan (+ Interest): <%= String.format("%.2f", totalPayment) %> </p>
    <%
                }
            } catch (NumberFormatException e) {
                // Handle invalid input format
    %>
                <p>Error: Invalid input format. Please enter valid numbers.</p>
    <%
            }
        } else {
            // Handle missing input
    %>
            <p>Error: Missing input. Please fill in all fields.</p>
    <%
        }
    %>
</body>
</html>
