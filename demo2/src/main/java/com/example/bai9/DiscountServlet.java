package com.example.bai9;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", value = "/discount")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        float ListPrice = Float.parseFloat(request.getParameter("ListPrice"));
        float DiscountPercent = Float.parseFloat(request.getParameter("DiscountPercent"));
        float DiscountPrice = ListPrice - ((float) (ListPrice * DiscountPercent * 0.01));

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Discount Percent: " + DiscountPercent + "</h1>");
        writer.println("<h1>Discount Price: " + DiscountPrice + "VND" + "</h1>");

        writer.println("</html>");

    }
}
