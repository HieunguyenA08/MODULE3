package com.example.bai10.Servlet;

import com.example.bai10.modal.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/UserServlet")
public class UserServlet extends HttpServlet {
    // b2 tạo list
    private static List<Customer> customers;

    @Override
    public void init() throws ServletException {
        super.init();
        customers = new ArrayList<>();
        customers.add(new Customer("Hieu", "01/01/2003", "Da Nang", "image/218027_v9_bb.jpg"));
        customers.add(new Customer("Nhan", "01/02/2003", "Da Nang", "image/218027_v9_bb.jpg"));
        customers.add(new Customer("Nam", "01/03/2003", "Da Nang", "image/218027_v9_bb.jpg"));
        customers.add(new Customer("Duy", "01/04/2003", "Da Nang", "image/218027_v9_bb.jpg"));
        customers.add(new Customer("Binh", "01/05/2003", "Da Nang", "image/218027_v9_bb.jpg"));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("customer",customers);
        request.getRequestDispatcher("detail.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
