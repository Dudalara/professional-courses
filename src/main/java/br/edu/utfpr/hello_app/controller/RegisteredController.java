package br.edu.utfpr.hello_app.controller;

import br.edu.utfpr.hello_app.model.domain.Registered;
import br.edu.utfpr.hello_app.service.RegisteredService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "RegisteredController", value = "/register")
public class RegisteredController extends HttpServlet {
    RegisteredService registeredService = new RegisteredService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.getRequestDispatcher("/WEB-INF/view/registered-create.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String cpf = request.getParameter("cpf");
        String ageString = request.getParameter("age");
        Integer age = Integer.parseInt(ageString);
        String address = request.getParameter("address");

        Registered registered = new Registered(name, cpf, age, address);

        registeredService.save(registered);

        request.setAttribute("flash.register", name + " - inscrição cadastrada com sucesso");
        response.sendRedirect("dashboard");
    }
}
