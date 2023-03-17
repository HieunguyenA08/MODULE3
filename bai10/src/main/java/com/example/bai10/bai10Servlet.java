package com.example.bai10;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "bai10Servlet", value = "/bai10Servlet")
public class bai10Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        float so1 = Float.parseFloat(request.getParameter("num1"));
        float so2 = Float.parseFloat(request.getParameter("num2"));
        String operator = request.getParameter("operator");

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h3>Result : " + caculate(so1, operator, so2) + "</h3>");
        writer.println("</html>");
    }

    private Double caculate(float so1, String operator, float so2) {
        double res = 0;
        switch (operator) {
            case "Cộng":
                res = so1 + so2;
                break;
            case "Trừ":
                res = so1 - so2;
                break;
            case "Nhân":
                res = so1 * so2;
                break;
            case "Chia":
                res = so1 / so2;
                break;

        }
        return res;

    }

}
