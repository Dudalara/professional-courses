package br.edu.utfpr.professional_courses.controller;

import br.edu.utfpr.professional_courses.service.RegisteredService;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "registeredList", value = "/registered-list")
public class RegisteredListController extends HttpServlet {

    RegisteredService registeredService = new RegisteredService();
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("registers", registeredService.findAll());

        response.setContentType("text/html");
        request.getRequestDispatcher("/WEB-INF/view/registered-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}