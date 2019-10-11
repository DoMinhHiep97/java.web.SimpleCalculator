package vn.codegym;

import java.io.IOException;
import java.io.PrintWriter;

@javax.servlet.annotation.WebServlet(name = "CalculatorServlet",urlPatterns ="/calculate" )
public class CalculatorServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        float number1=Integer.parseInt(request.getParameter("number1"));
        float number2=Integer.parseInt(request.getParameter("number2"));
        char operator=request.getParameter("operator").charAt(0);

        PrintWriter writer=response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Result: </h1>");
        try {
            Calculator calculator=new Calculator(number1,number2,operator);
            float result=calculator.calculate();
            writer.println(number1+" "+operator+" "+number2+"="+result);
        }catch (Exception ex){
            writer.println("Error: "+ex.getMessage());
        }
        writer.println("</html");
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
